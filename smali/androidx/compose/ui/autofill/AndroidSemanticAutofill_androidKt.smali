.class public abstract Landroidx/compose/ui/autofill/AndroidSemanticAutofill_androidKt;
.super Ljava/lang/Object;
.source "AndroidSemanticAutofill.android.kt"


# direct methods
.method public static final performAutofill(Landroidx/compose/ui/autofill/AndroidSemanticAutofill;Landroid/util/SparseArray;)V
    .locals 6

    .line 463
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 464
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 465
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillValue;

    .line 467
    sget-object v4, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    invoke-virtual {v4, v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->isText(Landroid/view/autofill/AutofillValue;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 468
    invoke-virtual {v4, v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->textValue(Landroid/view/autofill/AutofillValue;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->onTextFillHelper$ui_release(ILjava/lang/String;)V

    goto :goto_1

    .line 469
    :cond_0
    invoke-virtual {v4, v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->isDate(Landroid/view/autofill/AutofillValue;)Z

    move-result v2

    const-string v5, "An operation is not implemented: "

    if-nez v2, :cond_3

    .line 471
    invoke-virtual {v4, v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->isList(Landroid/view/autofill/AutofillValue;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 473
    invoke-virtual {v4, v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->isToggle(Landroid/view/autofill/AutofillValue;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    :cond_1
    new-instance p0, Lkotlin/NotImplementedError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "b/138604541: Add Autofill support for ContentDataType.Toggle"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 472
    :cond_2
    new-instance p0, Lkotlin/NotImplementedError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "b/138604541: Add Autofill support for ContentDataType.List"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 470
    :cond_3
    new-instance p0, Lkotlin/NotImplementedError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "b/138604541: Add Autofill support for ContentDataType.Date"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method public static final populateViewStructure(Landroidx/compose/ui/autofill/AndroidSemanticAutofill;Landroid/view/ViewStructure;)V
    .locals 36

    move-object/from16 v0, p1

    .line 315
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v1

    .line 344
    iget-object v2, v1, Landroidx/collection/IntObjectMap;->keys:[I

    .line 345
    iget-object v3, v1, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 316
    iget-object v1, v1, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 317
    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    const/4 v9, 0x7

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v12, 0x8

    if-ltz v4, :cond_4

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 320
    :goto_0
    aget-wide v5, v1, v14

    not-long v7, v5

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    and-long/2addr v7, v10

    cmp-long v7, v7, v10

    if-eqz v7, :cond_3

    sub-int v7, v14, v4

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    rsub-int/lit8 v7, v7, 0x8

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    const-wide/16 v18, 0xff

    and-long v20, v5, v18

    const-wide/16 v16, 0x80

    cmp-long v20, v20, v16

    if-gez v20, :cond_1

    shl-int/lit8 v20, v14, 0x3

    add-int v20, v20, v8

    .line 347
    aget v21, v2, v20

    aget-object v20, v3, v20

    .line 382
    check-cast v20, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    .line 318
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v13

    sget-object v21, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentType$ui_release()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v10

    invoke-virtual {v13, v10}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 319
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v10

    .line 320
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDataType$ui_release()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v11

    .line 319
    invoke-virtual {v10, v11}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    add-int/lit8 v15, v15, 0x1

    :cond_1
    shr-long/2addr v5, v12

    add-int/lit8 v8, v8, 0x1

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto :goto_1

    :cond_2
    if-ne v7, v12, :cond_5

    :cond_3
    if-eq v14, v4, :cond_5

    add-int/lit8 v14, v14, 0x1

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto :goto_0

    :cond_4
    const/4 v15, 0x0

    .line 323
    :cond_5
    sget-object v1, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    invoke-virtual {v1, v0, v15}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->addChildCount(Landroid/view/ViewStructure;I)I

    move-result v1

    .line 327
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v2

    .line 344
    iget-object v3, v2, Landroidx/collection/IntObjectMap;->keys:[I

    .line 345
    iget-object v4, v2, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 316
    iget-object v2, v2, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 317
    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_c

    const/4 v6, 0x0

    .line 320
    :goto_2
    aget-wide v7, v2, v6

    not-long v10, v7

    shl-long/2addr v10, v9

    and-long/2addr v10, v7

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v13

    cmp-long v10, v10, v13

    if-eqz v10, :cond_b

    sub-int v10, v6, v5

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    rsub-int/lit8 v10, v10, 0x8

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_a

    const-wide/16 v18, 0xff

    and-long v20, v7, v18

    const-wide/16 v15, 0x80

    cmp-long v17, v20, v15

    if-gez v17, :cond_9

    shl-int/lit8 v17, v6, 0x3

    add-int v17, v17, v11

    .line 347
    aget v9, v3, v17

    aget-object v17, v4, v17

    check-cast v17, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    .line 329
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v13

    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentType$ui_release()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 330
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v13

    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDataType$ui_release()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 332
    :cond_6
    sget-object v13, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    invoke-virtual {v13, v0, v1}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->newChild(Landroid/view/ViewStructure;I)Landroid/view/ViewStructure;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 335
    invoke-virtual {v13, v0}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->getAutofillId(Landroid/view/ViewStructure;)Landroid/view/autofill/AutofillId;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 333
    invoke-virtual {v13, v15, v12, v9}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setAutofillId(Landroid/view/ViewStructure;Landroid/view/autofill/AutofillId;I)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->getView()Landroidx/compose/ui/platform/AndroidComposeView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v13

    move-object/from16 v23, v15

    move/from16 v24, v9

    invoke-virtual/range {v22 .. v27}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setId(Landroid/view/ViewStructure;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v9

    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDataType$ui_release()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v12

    invoke-static {v9, v12}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 344
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v9

    .line 345
    invoke-virtual {v14}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentType$ui_release()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v12

    invoke-static {v9, v12}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 350
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getAdjustedBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 351
    iget v12, v9, Landroid/graphics/Rect;->left:I

    iget v14, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v34

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v35

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v28, v13

    move-object/from16 v29, v15

    move/from16 v30, v12

    move/from16 v31, v14

    invoke-virtual/range {v28 .. v35}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setDimens(Landroid/view/ViewStructure;IIIIII)V

    .line 354
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v9

    invoke-static {v9, v15}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill_androidKt;->populateViewStructure(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/view/ViewStructure;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    :cond_8
    const/16 v9, 0x8

    goto :goto_4

    :cond_9
    move v9, v12

    :goto_4
    shr-long/2addr v7, v9

    add-int/lit8 v11, v11, 0x1

    move v12, v9

    const/4 v9, 0x7

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto/16 :goto_3

    :cond_a
    move v9, v12

    const-wide/16 v18, 0xff

    if-ne v10, v9, :cond_c

    goto :goto_5

    :cond_b
    move v9, v12

    const-wide/16 v18, 0xff

    :goto_5
    if-eq v6, v5, :cond_c

    add-int/lit8 v6, v6, 0x1

    move v12, v9

    const/4 v9, 0x7

    goto/16 :goto_2

    :cond_c
    return-void
.end method

.method public static final populateViewStructure(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/view/ViewStructure;)V
    .locals 10

    .line 364
    sget-object v0, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->getOnClick()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setClickable(Landroid/view/ViewStructure;Z)V

    .line 365
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getToggleableState()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setCheckable(Landroid/view/ViewStructure;Z)V

    .line 366
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getDisabled()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v1

    const/4 v4, 0x1

    xor-int/2addr v1, v4

    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setEnabled(Landroid/view/ViewStructure;Z)V

    .line 367
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getFocused()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-static {v1, v5}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setFocused(Landroid/view/ViewStructure;Z)V

    .line 368
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getFocused()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setFocusable(Landroid/view/ViewStructure;Z)V

    .line 369
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsActions;->getOnLongClick()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setLongClickable(Landroid/view/ViewStructure;Z)V

    .line 370
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setSelected(Landroid/view/ViewStructure;Z)V

    .line 372
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getToggleableState()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/state/ToggleableState;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 373
    sget-object v5, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    if-ne v1, v5, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setChecked(Landroid/view/ViewStructure;Z)V

    .line 382
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->isTransparent$ui_release()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v2

    .line 380
    :goto_2
    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setVisibility(Landroid/view/ViewStructure;I)V

    .line 390
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/16 v1, 0xa

    const-string v3, ""

    if-eqz v0, :cond_6

    .line 34
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v5

    move v6, v2

    move-object v7, v3

    :goto_3
    if-ge v6, v5, :cond_5

    .line 35
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 36
    check-cast v8, Landroidx/compose/ui/text/AnnotatedString;

    .line 392
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 393
    :cond_5
    sget-object v0, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    invoke-virtual {v0, p1, v7}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setText(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V

    .line 394
    const-string v5, "android.widget.TextView"

    invoke-virtual {v0, p1, v5}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setClassName(Landroid/view/ViewStructure;Ljava/lang/String;)V

    .line 397
    :cond_6
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->getMaxTextLength()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v0, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 399
    sget-object v6, Landroidx/compose/ui/autofill/AutofillApi28Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi28Helper;

    invoke-virtual {v6, p1, v0}, Landroidx/compose/ui/autofill/AutofillApi28Helper;->setMaxTextLength(Landroid/view/ViewStructure;I)V

    .line 403
    :cond_7
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->getRole()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-static {v0, v6}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/Role;

    if-eqz v0, :cond_9

    .line 404
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v6

    .line 405
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->isFake$ui_release()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getReplacedChildren$ui_release()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 406
    :cond_8
    sget-object v7, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    invoke-static {v6}, Landroidx/compose/ui/autofill/AutofillUtils_androidKt;->toLegacyClassName-V4PA4sw(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, p1, v6}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setClassName(Landroid/view/ViewStructure;Ljava/lang/String;)V

    .line 410
    :cond_9
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 412
    sget-object v6, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    const-string v7, "android.widget.EditText"

    invoke-virtual {v6, p1, v7}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setClassName(Landroid/view/ViewStructure;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v6

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_b

    .line 34
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    move v7, v2

    :goto_4
    if-ge v7, v6, :cond_a

    .line 35
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 36
    check-cast v8, Landroidx/compose/ui/text/AnnotatedString;

    .line 417
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 418
    :cond_a
    sget-object v1, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    .line 420
    invoke-virtual {v1, v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->getAutofillTextValue(Ljava/lang/String;)Landroid/view/autofill/AutofillValue;

    move-result-object v3

    .line 418
    invoke-virtual {v1, p1, v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setAutofillValue(Landroid/view/ViewStructure;Landroid/view/autofill/AutofillValue;)V

    .line 425
    :cond_b
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-static {v1, v5}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 426
    sget-object v5, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/Role$Companion;->getTab-o7Vup1c()I

    move-result v5

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v0

    invoke-static {v0, v5}, Landroidx/compose/ui/semantics/Role;->equals-impl0(II)Z

    move-result v2

    :goto_5
    if-eqz v2, :cond_d

    .line 427
    sget-object v0, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setSelected(Landroid/view/ViewStructure;Z)V

    goto :goto_6

    .line 429
    :cond_d
    sget-object v0, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    invoke-virtual {v0, p1, v4}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setCheckable(Landroid/view/ViewStructure;Z)V

    .line 430
    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setChecked(Landroid/view/ViewStructure;Z)V

    .line 434
    :cond_e
    :goto_6
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 435
    sget-object v1, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    invoke-virtual {v1, p1, v0}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setContentDescription(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V

    .line 440
    :cond_f
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getSetText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 441
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getContentDataType$ui_release()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 442
    sget-object v0, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    invoke-virtual {v0, p1, v4}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setAutofillType(Landroid/view/ViewStructure;I)V

    .line 447
    :cond_10
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getPassword()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 448
    sget-object v0, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    const/16 v1, 0x81

    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setInputType(Landroid/view/ViewStructure;I)V

    .line 452
    invoke-virtual {v0, p1, v4}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setDataIsSensitive(Landroid/view/ViewStructure;Z)V

    .line 456
    :cond_11
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object p0

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getToggleableState()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 457
    sget-object p0, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setAutofillType(Landroid/view/ViewStructure;I)V

    :cond_12
    return-void
.end method
