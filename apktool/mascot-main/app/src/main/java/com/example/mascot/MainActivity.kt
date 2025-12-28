package com.example.mascot

import android.content.Intent
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.tooling.preview.Preview
import com.example.mascot.ui.theme.MascotTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        // pr le lancement des vérifications de sécurité dès le démarrage, afin de détecter un environnement à risque le plus tôt possible
        com.example.security.EnvironmentShield.checkAll(this, this);

        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            MascotTheme {
                Scaffold(modifier = Modifier.fillMaxSize()) { innerPadding ->
                    Home(
                        modifier = Modifier
                            .padding(innerPadding)
                            .fillMaxHeight()
                    )
                }
            }
        }
    }

    @Composable
    private fun Home(modifier: Modifier = Modifier) {
        IllustrationActionColumn(
            modifier = modifier
        ) {
            Image(
                painter = painterResource(id = R.drawable.logo),
                contentDescription = "Logo",
                modifier = Modifier.fillMaxWidth()
            )
            Button(onClick = {
                val intent = Intent(baseContext, MascotActivity::class.java)
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                baseContext.startActivity(intent)
            }) {
                Text("Commencer !")
            }
        }
    }

    @Preview(showBackground = true)
    @Composable
    private fun HomePreview() {
        MascotTheme {
            Home()
        }
    }
}