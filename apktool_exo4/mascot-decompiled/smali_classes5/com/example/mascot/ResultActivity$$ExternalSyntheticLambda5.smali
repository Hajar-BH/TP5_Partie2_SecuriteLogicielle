.class public final synthetic Lcom/example/mascot/ResultActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/example/mascot/ResultActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroidx/compose/ui/Modifier;

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/example/mascot/ResultActivity;Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/ui/Modifier;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/mascot/ResultActivity$$ExternalSyntheticLambda5;->f$0:Lcom/example/mascot/ResultActivity;

    iput-object p2, p0, Lcom/example/mascot/ResultActivity$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/example/mascot/ResultActivity$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/example/mascot/ResultActivity$$ExternalSyntheticLambda5;->f$3:Z

    iput-object p5, p0, Lcom/example/mascot/ResultActivity$$ExternalSyntheticLambda5;->f$4:Landroidx/compose/ui/Modifier;

    iput p6, p0, Lcom/example/mascot/ResultActivity$$ExternalSyntheticLambda5;->f$5:I

    iput p7, p0, Lcom/example/mascot/ResultActivity$$ExternalSyntheticLambda5;->f$6:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 0
    iget-object v0, p0, Lcom/example/mascot/ResultActivity$$ExternalSyntheticLambda5;->f$0:Lcom/example/mascot/ResultActivity;

    iget-object v1, p0, Lcom/example/mascot/ResultActivity$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/example/mascot/ResultActivity$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/example/mascot/ResultActivity$$ExternalSyntheticLambda5;->f$3:Z

    iget-object v4, p0, Lcom/example/mascot/ResultActivity$$ExternalSyntheticLambda5;->f$4:Landroidx/compose/ui/Modifier;

    iget v5, p0, Lcom/example/mascot/ResultActivity$$ExternalSyntheticLambda5;->f$5:I

    iget v6, p0, Lcom/example/mascot/ResultActivity$$ExternalSyntheticLambda5;->f$6:I

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static/range {v0 .. v8}, Lcom/example/mascot/ResultActivity;->$r8$lambda$TOA4oM1b01pWPwy7bYw8Wo5Iowk(Lcom/example/mascot/ResultActivity;Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
