.class public final Landroidx/activity/compose/ActivityResultRegistryKt;
.super Ljava/lang/Object;
.source "ActivityResultRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityResultRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultRegistry.kt\nandroidx/activity/compose/ActivityResultRegistryKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,157:1\n1225#2,6:158\n1225#2,6:164\n1225#2,6:170\n1225#2,6:176\n64#3,5:182\n*S KotlinDebug\n*F\n+ 1 ActivityResultRegistry.kt\nandroidx/activity/compose/ActivityResultRegistryKt\n*L\n90#1:158,6\n97#1:164,6\n98#1:170,6\n102#1:176,6\n105#1:182,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001aM\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\u00080\u0007H\u0007\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "rememberLauncherForActivityResult",
        "Landroidx/activity/compose/ManagedActivityResultLauncher;",
        "I",
        "O",
        "contract",
        "Landroidx/activity/result/contract/ActivityResultContract;",
        "onResult",
        "Lkotlin/Function1;",
        "",
        "(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;",
        "activity-compose_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$TFLSTuxHTEYc8WQ6btR0kc4Fybw(Landroidx/compose/runtime/State;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/activity/compose/ActivityResultRegistryKt;->rememberLauncherForActivityResult$lambda$8$lambda$7$lambda$5(Landroidx/compose/runtime/State;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ToCYpjvMren8aoiTYNLeA_vfAis()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroidx/activity/compose/ActivityResultRegistryKt;->rememberLauncherForActivityResult$lambda$1$lambda$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$aKrHBzARWquTMO9iXRP0lMi_NgU(Landroidx/activity/compose/ActivityResultLauncherHolder;Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/compose/runtime/State;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/activity/compose/ActivityResultRegistryKt;->rememberLauncherForActivityResult$lambda$8$lambda$7(Landroidx/activity/compose/ActivityResultLauncherHolder;Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/compose/runtime/State;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method

.method public static final rememberLauncherForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;
    .locals 19
    .param p0, "contract"    # Landroidx/activity/result/contract/ActivityResultContract;
    .param p1, "onResult"    # Lkotlin/jvm/functions/Function1;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TO;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/activity/compose/ManagedActivityResultLauncher<",
            "TI;TO;>;"
        }
    .end annotation

    .line 83
    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v10, p3

    const v0, -0x53f413f7

    const-string v1, "C(rememberLauncherForActivityResult)84@3541L30,85@3598L30,89@3784L32,89@3767L49,92@3905L7,96@4088L46,97@4162L73,101@4418L176,101@4362L232:ActivityResultRegistry.kt#q1dkbc"

    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v3, "androidx.activity.compose.rememberLauncherForActivityResult (ActivityResultRegistry.kt:82)"

    invoke-static {v0, v10, v1, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 85
    :cond_0
    and-int/lit8 v0, v10, 0xe

    invoke-static {v2, v4, v0}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v11

    .line 86
    .local v11, "currentContract":Landroidx/compose/runtime/State;
    shr-int/lit8 v0, v10, 0x3

    and-int/lit8 v0, v0, 0xe

    move-object/from16 v12, p1

    invoke-static {v12, v4, v0}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    .local v0, "currentOnResult":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    .line 90
    const v1, -0x273eb277

    const-string v13, "CC(remember):ActivityResultRegistry.kt#9igjgp"

    invoke-static {v4, v1, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "invalid$iv":Z
    move-object/from16 v5, p2

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 158
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 159
    .local v8, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v7, v9, :cond_1

    .line 160
    const/4 v9, 0x0

    .local v9, "$i$a$-cache-ActivityResultRegistryKt$rememberLauncherForActivityResult$key$1":I
    new-instance v14, Landroidx/activity/compose/ActivityResultRegistryKt$$ExternalSyntheticLambda0;

    invoke-direct {v14}, Landroidx/activity/compose/ActivityResultRegistryKt$$ExternalSyntheticLambda0;-><init>()V

    .line 161
    .end local v9    # "$i$a$-cache-ActivityResultRegistryKt$rememberLauncherForActivityResult$key$1":I
    .local v14, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 162
    nop

    .end local v14    # "value$iv":Ljava/lang/Object;
    goto :goto_0

    .line 163
    :cond_1
    move-object v14, v7

    .line 159
    :goto_0
    nop

    .line 158
    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 90
    .end local v1    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    move-object v6, v14

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    const/16 v8, 0xc00

    const/4 v9, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v7, p2

    invoke-static/range {v3 .. v9}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    .local v1, "key":Ljava/lang/String;
    sget-object v3, Landroidx/activity/compose/LocalActivityResultRegistryOwner;->INSTANCE:Landroidx/activity/compose/LocalActivityResultRegistryOwner;

    const/4 v4, 0x6

    invoke-virtual {v3, v7, v4}, Landroidx/activity/compose/LocalActivityResultRegistryOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/activity/result/ActivityResultRegistryOwner;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 96
    invoke-interface {v3}, Landroidx/activity/result/ActivityResultRegistryOwner;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v3

    .line 92
    nop

    .line 97
    .local v3, "activityResultRegistry":Landroidx/activity/result/ActivityResultRegistry;
    const v4, -0x273e8c69

    invoke-static {v7, v4, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v4, 0x0

    .local v4, "invalid$iv":Z
    move-object/from16 v5, p2

    .restart local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 164
    .restart local v6    # "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 165
    .local v9, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v8, v14, :cond_2

    .line 166
    const/4 v14, 0x0

    .line 97
    .local v14, "$i$a$-cache-ActivityResultRegistryKt$rememberLauncherForActivityResult$realLauncher$1":I
    new-instance v15, Landroidx/activity/compose/ActivityResultLauncherHolder;

    invoke-direct {v15}, Landroidx/activity/compose/ActivityResultLauncherHolder;-><init>()V

    .line 166
    .end local v14    # "$i$a$-cache-ActivityResultRegistryKt$rememberLauncherForActivityResult$realLauncher$1":I
    nop

    .line 167
    .local v15, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 168
    nop

    .end local v15    # "value$iv":Ljava/lang/Object;
    goto :goto_1

    .line 169
    :cond_2
    move-object v15, v8

    .line 165
    :goto_1
    nop

    .line 164
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 97
    .end local v4    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    move-object v4, v15

    check-cast v4, Landroidx/activity/compose/ActivityResultLauncherHolder;

    .local v4, "realLauncher":Landroidx/activity/compose/ActivityResultLauncherHolder;
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 98
    const v5, -0x273e830e

    invoke-static {v7, v5, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v5, 0x0

    .local v5, "invalid$iv":Z
    move-object/from16 v6, p2

    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 170
    .local v8, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 171
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v9, v15, :cond_3

    .line 172
    const/4 v15, 0x0

    .line 98
    .local v15, "$i$a$-cache-ActivityResultRegistryKt$rememberLauncherForActivityResult$returnedLauncher$1":I
    move/from16 v16, v5

    .end local v5    # "invalid$iv":Z
    .local v16, "invalid$iv":Z
    new-instance v5, Landroidx/activity/compose/ManagedActivityResultLauncher;

    invoke-direct {v5, v4, v11}, Landroidx/activity/compose/ManagedActivityResultLauncher;-><init>(Landroidx/activity/compose/ActivityResultLauncherHolder;Landroidx/compose/runtime/State;)V

    .line 172
    .end local v15    # "$i$a$-cache-ActivityResultRegistryKt$rememberLauncherForActivityResult$returnedLauncher$1":I
    nop

    .line 173
    .local v5, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 174
    nop

    .end local v5    # "value$iv":Ljava/lang/Object;
    goto :goto_2

    .line 175
    .end local v16    # "invalid$iv":Z
    .local v5, "invalid$iv":Z
    :cond_3
    move/from16 v16, v5

    .end local v5    # "invalid$iv":Z
    .restart local v16    # "invalid$iv":Z
    move-object v5, v9

    .line 171
    :goto_2
    nop

    .line 170
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 98
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    .end local v16    # "invalid$iv":Z
    move-object v6, v5

    check-cast v6, Landroidx/activity/compose/ManagedActivityResultLauncher;

    .local v6, "returnedLauncher":Landroidx/activity/compose/ManagedActivityResultLauncher;
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 102
    const v5, -0x273e62a7

    invoke-static {v7, v5, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v8, v5

    .local v8, "invalid$iv":Z
    move-object/from16 v9, p2

    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v13, 0x0

    .line 176
    .local v13, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 177
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v8, :cond_5

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v14, v5, :cond_4

    goto :goto_3

    .line 181
    :cond_4
    move-object/from16 v16, v0

    move-object v0, v3

    move-object/from16 v17, v4

    move-object v2, v14

    goto :goto_4

    .line 178
    :cond_5
    :goto_3
    const/16 v16, 0x0

    .line 102
    .local v16, "$i$a$-cache-ActivityResultRegistryKt$rememberLauncherForActivityResult$1":I
    move-object v5, v0

    .end local v0    # "currentOnResult":Landroidx/compose/runtime/State;
    .local v5, "currentOnResult":Landroidx/compose/runtime/State;
    new-instance v0, Landroidx/activity/compose/ActivityResultRegistryKt$$ExternalSyntheticLambda1;

    move-object/from16 v18, v3

    move-object v3, v1

    move-object v1, v4

    move-object v4, v2

    move-object/from16 v2, v18

    .end local v4    # "realLauncher":Landroidx/activity/compose/ActivityResultLauncherHolder;
    .local v1, "realLauncher":Landroidx/activity/compose/ActivityResultLauncherHolder;
    .local v2, "activityResultRegistry":Landroidx/activity/result/ActivityResultRegistry;
    .local v3, "key":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroidx/activity/compose/ActivityResultRegistryKt$$ExternalSyntheticLambda1;-><init>(Landroidx/activity/compose/ActivityResultLauncherHolder;Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/compose/runtime/State;)V

    .line 178
    move-object/from16 v16, v2

    move-object v2, v0

    move-object/from16 v0, v16

    move-object/from16 v17, v1

    move-object v1, v3

    move-object/from16 v16, v5

    .line 179
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "currentOnResult":Landroidx/compose/runtime/State;
    .local v0, "activityResultRegistry":Landroidx/activity/result/ActivityResultRegistry;
    .local v1, "key":Ljava/lang/String;
    .local v2, "value$iv":Ljava/lang/Object;
    .local v16, "currentOnResult":Landroidx/compose/runtime/State;
    .local v17, "realLauncher":Landroidx/activity/compose/ActivityResultLauncherHolder;
    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 180
    nop

    .line 177
    .end local v2    # "value$iv":Ljava/lang/Object;
    :goto_4
    nop

    .line 176
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 102
    .end local v8    # "invalid$iv":Z
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v13    # "$i$f$cache":I
    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    shl-int/lit8 v2, v10, 0x6

    and-int/lit16 v5, v2, 0x380

    move-object/from16 v2, p0

    move-object v4, v7

    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 83
    :cond_6
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 107
    return-object v6

    .line 93
    .end local v6    # "returnedLauncher":Landroidx/activity/compose/ManagedActivityResultLauncher;
    .end local v16    # "currentOnResult":Landroidx/compose/runtime/State;
    .end local v17    # "realLauncher":Landroidx/activity/compose/ActivityResultLauncherHolder;
    .local v0, "currentOnResult":Landroidx/compose/runtime/State;
    :cond_7
    move-object/from16 v16, v0

    .end local v0    # "currentOnResult":Landroidx/compose/runtime/State;
    .restart local v16    # "currentOnResult":Landroidx/compose/runtime/State;
    const/4 v0, 0x0

    .line 94
    .local v0, "$i$a$-checkNotNull-ActivityResultRegistryKt$rememberLauncherForActivityResult$activityResultRegistry$1":I
    nop

    .line 93
    .end local v0    # "$i$a$-checkNotNull-ActivityResultRegistryKt$rememberLauncherForActivityResult$activityResultRegistry$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No ActivityResultRegistryOwner was provided via LocalActivityResultRegistryOwner"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final rememberLauncherForActivityResult$lambda$1$lambda$0()Ljava/lang/String;
    .locals 1

    .line 90
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final rememberLauncherForActivityResult$lambda$8$lambda$7(Landroidx/activity/compose/ActivityResultLauncherHolder;Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/compose/runtime/State;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 3
    .param p0, "$realLauncher"    # Landroidx/activity/compose/ActivityResultLauncherHolder;
    .param p1, "$activityResultRegistry"    # Landroidx/activity/result/ActivityResultRegistry;
    .param p2, "$key"    # Ljava/lang/String;
    .param p3, "$contract"    # Landroidx/activity/result/contract/ActivityResultContract;
    .param p4, "$currentOnResult"    # Landroidx/compose/runtime/State;
    .param p5, "$this$DisposableEffect"    # Landroidx/compose/runtime/DisposableEffectScope;

    .line 103
    nop

    .line 104
    new-instance v0, Landroidx/activity/compose/ActivityResultRegistryKt$$ExternalSyntheticLambda2;

    invoke-direct {v0, p4}, Landroidx/activity/compose/ActivityResultRegistryKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/State;)V

    invoke-virtual {p1, p2, p3, v0}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    .line 103
    invoke-virtual {p0, v0}, Landroidx/activity/compose/ActivityResultLauncherHolder;->setLauncher(Landroidx/activity/result/ActivityResultLauncher;)V

    .line 105
    move-object v0, p5

    .local v0, "this_$iv":Landroidx/compose/runtime/DisposableEffectScope;
    const/4 v1, 0x0

    .line 182
    .local v1, "$i$f$onDispose":I
    new-instance v2, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$lambda$8$lambda$7$$inlined$onDispose$1;

    invoke-direct {v2, p0}, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$lambda$8$lambda$7$$inlined$onDispose$1;-><init>(Landroidx/activity/compose/ActivityResultLauncherHolder;)V

    check-cast v2, Landroidx/compose/runtime/DisposableEffectResult;

    .line 186
    nop

    .line 105
    .end local v0    # "this_$iv":Landroidx/compose/runtime/DisposableEffectScope;
    .end local v1    # "$i$f$onDispose":I
    return-object v2
.end method

.method private static final rememberLauncherForActivityResult$lambda$8$lambda$7$lambda$5(Landroidx/compose/runtime/State;Ljava/lang/Object;)V
    .locals 1
    .param p0, "$currentOnResult"    # Landroidx/compose/runtime/State;
    .param p1, "it"    # Ljava/lang/Object;

    .line 104
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
