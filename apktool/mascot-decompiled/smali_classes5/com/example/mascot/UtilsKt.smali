.class public final Lcom/example/mascot/UtilsKt;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/example/mascot/UtilsKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/Updater\n*L\n1#1,24:1\n148#2:25\n85#3,3:26\n88#3:57\n92#3:61\n78#4,6:29\n85#4,4:44\n89#4,2:54\n93#4:60\n368#5,9:35\n377#5:56\n378#5,2:58\n4032#6,6:48\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/example/mascot/UtilsKt\n*L\n20#1:25\n17#1:26,3\n17#1:57\n17#1:61\n17#1:29,6\n17#1:44,4\n17#1:54,2\n17#1:60\n17#1:35,9\n17#1:56\n17#1:58,2\n17#1:48,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a5\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u001c\u0010\u0004\u001a\u0018\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0002\u0008\u0007\u00a2\u0006\u0002\u0008\u0008H\u0007\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "IllustrationActionColumn",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "app_debug"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$bEvk5rhrldP2qRl7VVHWGGsV3i4(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/example/mascot/UtilsKt;->IllustrationActionColumn$lambda$1(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final IllustrationActionColumn(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 29
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "content"    # Lkotlin/jvm/functions/Function3;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    const-string v3, "content"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const v3, 0x6d0d55a

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(IllustrationActionColumn)N(modifier,content)16@522L229:Utils.kt#4zhrkq"

    invoke-static {v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p3

    .local v5, "$dirty":I
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_0

    or-int/lit8 v5, v5, 0x6

    move-object/from16 v7, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v7, v1, 0x6

    if-nez v7, :cond_2

    move-object/from16 v7, p0

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x4

    goto :goto_0

    :cond_1
    const/4 v8, 0x2

    :goto_0
    or-int/2addr v5, v8

    goto :goto_1

    :cond_2
    move-object/from16 v7, p0

    :goto_1
    and-int/lit8 v8, v1, 0x30

    if-nez v8, :cond_4

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x20

    goto :goto_2

    :cond_3
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v5, v8

    :cond_4
    and-int/lit8 v8, v5, 0x13

    const/16 v9, 0x12

    if-eq v8, v9, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    and-int/lit8 v9, v5, 0x1

    invoke-interface {v4, v8, v9}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v8

    if-eqz v8, :cond_d

    if-eqz v6, :cond_6

    .line 14
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v6, Landroidx/compose/ui/Modifier;

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v6, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_4

    .line 16
    .end local v6    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_6
    move-object v6, v7

    .line 14
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v6    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, -0x1

    const-string v8, "com.example.mascot.IllustrationActionColumn (Utils.kt:15)"

    invoke-static {v3, v5, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 18
    :cond_7
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v3

    .line 19
    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v7}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceBetween()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v7

    .line 20
    const/16 v8, 0x14

    .local v8, "$this$dp\\1":I
    const/4 v9, 0x0

    .line 25
    .local v9, "$i$f$getDp\\1\\20":I
    int-to-float v11, v8

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    .line 20
    .end local v8    # "$this$dp\\1":I
    .end local v9    # "$i$f$getDp\\1\\20":I
    const/16 v9, 0x32

    .local v9, "$this$dp\\2":I
    const/4 v11, 0x0

    .line 25
    .local v11, "$i$f$getDp\\2\\20":I
    int-to-float v12, v9

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    .line 20
    .end local v9    # "$this$dp\\2":I
    .end local v11    # "$i$f$getDp\\2\\20":I
    invoke-static {v6, v8, v9}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 19
    check-cast v7, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 18
    nop

    .line 17
    const/16 v9, 0x1b0

    .local v7, "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v8, "modifier\\3":Landroidx/compose/ui/Modifier;
    .local v9, "$changed\\3":I
    move-object v11, v4

    .local v3, "horizontalAlignment\\3":Landroidx/compose/ui/Alignment$Horizontal;
    .local v11, "$composer\\3":Landroidx/compose/runtime/Composer;
    const/4 v12, 0x0

    .line 26
    .local v12, "$i$f$Column\\3\\17":I
    const v13, -0x1cd0f17e

    const-string v14, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo"

    invoke-static {v11, v13, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 27
    shr-int/lit8 v13, v9, 0x3

    and-int/lit8 v13, v13, 0xe

    shr-int/lit8 v14, v9, 0x3

    and-int/lit8 v14, v14, 0x70

    or-int/2addr v13, v14

    invoke-static {v7, v3, v11, v13}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v13

    .local v13, "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v14, v9, 0x3

    and-int/lit8 v14, v14, 0x70

    .line 28
    nop

    .local v14, "$changed\\4":I
    const/4 v15, 0x0

    .line 29
    .local v15, "$i$f$Layout\\4\\28":I
    const v10, -0x4ee9b9da

    move-object/from16 p0, v3

    .end local v3    # "horizontalAlignment\\3":Landroidx/compose/ui/Alignment$Horizontal;
    .local p0, "horizontalAlignment\\3":Landroidx/compose/ui/Alignment$Horizontal;
    const-string v3, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh"

    invoke-static {v11, v10, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 30
    const/4 v3, 0x0

    invoke-static {v11, v3}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v3

    .line 31
    .local v3, "compositeKeyHash\\4":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v10

    .line 32
    .local v10, "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 p2, v3

    .end local v3    # "compositeKeyHash\\4":I
    .local p2, "compositeKeyHash\\4":I
    invoke-static {v11, v8}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 34
    .local v3, "materialized\\4":Landroidx/compose/ui/Modifier;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    move-object/from16 v17, v4

    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    shl-int/lit8 v4, v14, 0x6

    and-int/lit16 v4, v4, 0x380

    or-int/lit8 v4, v4, 0x6

    .line 33
    nop

    .local v4, "$changed\\5":I
    move-object/from16 v18, v16

    .local v18, "factory\\5":Lkotlin/jvm/functions/Function0;
    const/16 v16, 0x0

    .line 35
    .local v16, "$i$f$ReusableComposeNode\\5\\33":I
    move/from16 v19, v4

    .end local v4    # "$changed\\5":I
    .local v19, "$changed\\5":I
    const v4, -0x2942ffcf

    move/from16 v20, v5

    .end local v5    # "$dirty":I
    .local v20, "$dirty":I
    const-string v5, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    invoke-static {v11, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 36
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v4

    instance-of v4, v4, Landroidx/compose/runtime/Applier;

    if-nez v4, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 37
    :cond_8
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 38
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 39
    move-object/from16 v4, v18

    .end local v18    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .local v4, "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    .line 41
    .end local v4    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .restart local v18    # "factory\\5":Lkotlin/jvm/functions/Function0;
    :cond_9
    move-object/from16 v4, v18

    .end local v18    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .restart local v4    # "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 43
    :goto_5
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .local v5, "$this$Layout_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 44
    .local v18, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\6\\43\\4":I
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v22, v4

    .end local v4    # "factory\\5":Lkotlin/jvm/functions/Function0;
    .local v22, "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v5, v13, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 45
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v5, v10, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 47
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .local v4, "block\\7":Lkotlin/jvm/functions/Function2;
    const/16 v21, 0x0

    .line 48
    .local v21, "$i$f$set-impl\\7\\47":I
    move-object/from16 v23, v5

    .local v23, "$this$set_impl_u24lambda_u240\\7":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 49
    .local v24, "$i$a$-with-Updater$set$1\\8\\48\\7":I
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v25

    if-nez v25, :cond_b

    move-object/from16 v25, v6

    .end local v6    # "modifier":Landroidx/compose/ui/Modifier;
    .local v25, "modifier":Landroidx/compose/ui/Modifier;
    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v26, v7

    .end local v7    # "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v26, "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_6

    :cond_a
    move-object/from16 v7, v23

    goto :goto_7

    .end local v25    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v26    # "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local v6    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v7    # "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :cond_b
    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 50
    .end local v6    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v7    # "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local v25    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v26    # "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :goto_6
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v7, v23

    .end local v23    # "$this$set_impl_u24lambda_u240\\7":Landroidx/compose/runtime/Composer;
    .local v7, "$this$set_impl_u24lambda_u240\\7":Landroidx/compose/runtime/Composer;
    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 51
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 53
    :goto_7
    nop

    .line 48
    .end local v7    # "$this$set_impl_u24lambda_u240\\7":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$a$-with-Updater$set$1\\8\\48\\7":I
    nop

    .line 53
    nop

    .line 54
    .end local v4    # "block\\7":Lkotlin/jvm/functions/Function2;
    .end local v21    # "$i$f$set-impl\\7\\47":I
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 55
    nop

    .line 43
    .end local v5    # "$this$Layout_u24lambda_u240\\6":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1\\6\\43\\4":I
    nop

    .line 56
    shr-int/lit8 v4, v19, 0x6

    and-int/lit8 v4, v4, 0xe

    .local v4, "$changed\\9":I
    move-object v5, v11

    .local v5, "$composer\\9":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 57
    .local v6, "$i$a$-Layout-ColumnKt$Column$1\\9\\56\\3":I
    const v7, -0x16f088b9

    move-object/from16 v18, v3

    .end local v3    # "materialized\\4":Landroidx/compose/ui/Modifier;
    .local v18, "materialized\\4":Landroidx/compose/ui/Modifier;
    const-string v3, "C87@4365L9:Column.kt#2w3rfo"

    invoke-static {v5, v7, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v3, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v7, v9, 0x6

    and-int/lit8 v7, v7, 0x70

    or-int/lit8 v7, v7, 0x6

    .local v7, "$changed\\10":I
    check-cast v3, Landroidx/compose/foundation/layout/ColumnScope;

    .local v3, "$this$IllustrationActionColumn_u24lambda_u240\\10":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v21, v5

    .local v21, "$composer\\10":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 22
    .local v23, "$i$a$-Column-UtilsKt$IllustrationActionColumn$1\\10\\57\\0":I
    move/from16 v24, v4

    .end local v4    # "$changed\\9":I
    .local v24, "$changed\\9":I
    const v4, 0x1780228a

    move-object/from16 v27, v5

    .end local v5    # "$composer\\9":Landroidx/compose/runtime/Composer;
    .local v27, "$composer\\9":Landroidx/compose/runtime/Composer;
    const-string v5, "C21@736L9:Utils.kt#4zhrkq"

    move/from16 v28, v6

    move-object/from16 v6, v21

    .end local v21    # "$composer\\10":Landroidx/compose/runtime/Composer;
    .local v6, "$composer\\10":Landroidx/compose/runtime/Composer;
    .local v28, "$i$a$-Layout-ColumnKt$Column$1\\9\\56\\3":I
    invoke-static {v6, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v4, v7, 0xe

    and-int/lit8 v5, v20, 0x70

    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v6, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 23
    nop

    .line 57
    .end local v3    # "$this$IllustrationActionColumn_u24lambda_u240\\10":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v6    # "$composer\\10":Landroidx/compose/runtime/Composer;
    .end local v7    # "$changed\\10":I
    .end local v23    # "$i$a$-Column-UtilsKt$IllustrationActionColumn$1\\10\\57\\0":I
    invoke-static/range {v27 .. v27}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 56
    .end local v24    # "$changed\\9":I
    .end local v27    # "$composer\\9":Landroidx/compose/runtime/Composer;
    .end local v28    # "$i$a$-Layout-ColumnKt$Column$1\\9\\56\\3":I
    nop

    .line 58
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 35
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 59
    nop

    .line 29
    .end local v16    # "$i$f$ReusableComposeNode\\5\\33":I
    .end local v19    # "$changed\\5":I
    .end local v22    # "factory\\5":Lkotlin/jvm/functions/Function0;
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 60
    nop

    .line 26
    .end local v10    # "localMap\\4":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v14    # "$changed\\4":I
    .end local v15    # "$i$f$Layout\\4\\28":I
    .end local v18    # "materialized\\4":Landroidx/compose/ui/Modifier;
    .end local p2    # "compositeKeyHash\\4":I
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 61
    nop

    .end local v8    # "modifier\\3":Landroidx/compose/ui/Modifier;
    .end local v9    # "$changed\\3":I
    .end local v11    # "$composer\\3":Landroidx/compose/runtime/Composer;
    .end local v12    # "$i$f$Column\\3\\17":I
    .end local v13    # "measurePolicy\\3":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v26    # "verticalArrangement\\3":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local p0    # "horizontalAlignment\\3":Landroidx/compose/ui/Alignment$Horizontal;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 24
    :cond_c
    move-object/from16 v7, v25

    goto :goto_8

    .line 13
    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v20    # "$dirty":I
    .end local v25    # "modifier":Landroidx/compose/ui/Modifier;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$dirty":I
    .local p0, "modifier":Landroidx/compose/ui/Modifier;
    :cond_d
    move-object/from16 v17, v4

    move/from16 v20, v5

    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v5    # "$dirty":I
    .restart local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v20    # "$dirty":I
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 24
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v7, "modifier":Landroidx/compose/ui/Modifier;
    :goto_8
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_e

    new-instance v4, Lcom/example/mascot/UtilsKt$$ExternalSyntheticLambda0;

    invoke-direct {v4, v7, v0, v1, v2}, Lcom/example/mascot/UtilsKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;II)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_e
    return-void
.end method

.method private static final IllustrationActionColumn$lambda$1(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v0

    invoke-static {p0, p1, p4, v0, p3}, Lcom/example/mascot/UtilsKt;->IllustrationActionColumn(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
