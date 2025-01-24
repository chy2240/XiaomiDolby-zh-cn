.class final Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;
.super Ljava/lang/Object;
.source "SaveableStateRegistry.kt"

# interfaces
.implements Landroidx/compose/runtime/saveable/SaveableStateRegistry;


# instance fields
.field private final canBeSaved:Lkotlin/jvm/functions/Function1;

.field private final restored:Landroidx/collection/MutableScatterMap;

.field private final valueProviders:Landroidx/collection/MutableScatterMap;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;->canBeSaved:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    .line 109
    invoke-static {p1}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->access$toMutableScatterMap(Ljava/util/Map;)Landroidx/collection/MutableScatterMap;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    invoke-static {}, Landroidx/collection/ScatterMapKt;->mutableScatterMapOf()Landroidx/collection/MutableScatterMap;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;->restored:Landroidx/collection/MutableScatterMap;

    .line 110
    invoke-static {}, Landroidx/collection/ScatterMapKt;->mutableScatterMapOf()Landroidx/collection/MutableScatterMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;->valueProviders:Landroidx/collection/MutableScatterMap;

    return-void
.end method

.method public static final synthetic access$getValueProviders$p(Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;)Landroidx/collection/MutableScatterMap;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;->valueProviders:Landroidx/collection/MutableScatterMap;

    return-object p0
.end method


# virtual methods
.method public canBeSaved(Ljava/lang/Object;)Z
    .locals 0

    .line 112
    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;->canBeSaved:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public consumeRestored(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 115
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;->restored:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 116
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 118
    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;->restored:Landroidx/collection/MutableScatterMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    const/4 p0, 0x0

    .line 120
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public performSave()Ljava/util/Map;
    .locals 24

    move-object/from16 v0, p0

    .line 145
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, v0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;->restored:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v2}, Landroidx/collection/ScatterMap;->getSize()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 146
    iget-object v2, v0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;->restored:Landroidx/collection/MutableScatterMap;

    .line 178
    iget-object v3, v2, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 179
    iget-object v4, v2, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 182
    iget-object v2, v2, Landroidx/collection/ScatterMap;->metadata:[J

    .line 183
    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    const/4 v10, 0x7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v13, 0x8

    if-ltz v5, :cond_3

    const/4 v15, 0x0

    .line 367
    :goto_0
    aget-wide v6, v2, v15

    not-long v8, v6

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    and-long/2addr v8, v11

    cmp-long v8, v8, v11

    if-eqz v8, :cond_2

    sub-int v8, v15, v5

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    rsub-int/lit8 v8, v8, 0x8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_1

    const-wide/16 v18, 0xff

    and-long v20, v6, v18

    const-wide/16 v16, 0x80

    cmp-long v20, v20, v16

    if-gez v20, :cond_0

    shl-int/lit8 v20, v15, 0x3

    add-int v20, v20, v9

    .line 396
    aget-object v21, v3, v20

    aget-object v20, v4, v20

    move-object/from16 v14, v20

    check-cast v14, Ljava/util/List;

    move-object/from16 v11, v21

    check-cast v11, Ljava/lang/String;

    .line 146
    invoke-interface {v1, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    shr-long/2addr v6, v13

    add-int/lit8 v9, v9, 0x1

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto :goto_1

    :cond_1
    if-ne v8, v13, :cond_3

    :cond_2
    if-eq v15, v5, :cond_3

    add-int/lit8 v15, v15, 0x1

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto :goto_0

    .line 148
    :cond_3
    iget-object v2, v0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;->valueProviders:Landroidx/collection/MutableScatterMap;

    .line 204
    iget-object v3, v2, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 205
    iget-object v4, v2, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 208
    iget-object v2, v2, Landroidx/collection/ScatterMap;->metadata:[J

    .line 209
    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_d

    const/4 v6, 0x0

    .line 367
    :goto_2
    aget-wide v7, v2, v6

    not-long v11, v7

    shl-long/2addr v11, v10

    and-long/2addr v11, v7

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v14

    cmp-long v9, v11, v14

    if-eqz v9, :cond_c

    sub-int v9, v6, v5

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    rsub-int/lit8 v9, v9, 0x8

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v9, :cond_b

    const-wide/16 v18, 0xff

    and-long v20, v7, v18

    const-wide/16 v16, 0x80

    cmp-long v12, v20, v16

    if-gez v12, :cond_a

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    .line 396
    aget-object v20, v3, v12

    aget-object v12, v4, v12

    check-cast v12, Ljava/util/List;

    move-object/from16 v10, v20

    check-cast v10, Ljava/lang/String;

    .line 149
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    const/4 v14, 0x0

    .line 150
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 152
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;->canBeSaved(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 153
    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-interface {v1, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object/from16 v23, v2

    goto :goto_6

    .line 152
    :cond_5
    invoke-static {v12}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->generateCannotBeSavedErrorMessage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/4 v14, 0x0

    .line 162
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v15, :cond_9

    .line 163
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lkotlin/jvm/functions/Function0;

    move-object/from16 v23, v2

    invoke-interface/range {v22 .. v22}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 165
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;->canBeSaved(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {v2}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->generateCannotBeSavedErrorMessage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_8
    :goto_5
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v23

    goto :goto_4

    :cond_9
    move-object/from16 v23, v2

    .line 161
    invoke-interface {v1, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    const/16 v2, 0x8

    goto :goto_7

    :cond_a
    move-object/from16 v23, v2

    move v2, v13

    :goto_7
    shr-long/2addr v7, v2

    add-int/lit8 v11, v11, 0x1

    move v13, v2

    move-object/from16 v2, v23

    const/4 v10, 0x7

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto/16 :goto_3

    :cond_b
    move-object/from16 v23, v2

    move v2, v13

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    if-ne v9, v2, :cond_d

    goto :goto_8

    :cond_c
    move-object/from16 v23, v2

    move v2, v13

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    :goto_8
    if-eq v6, v5, :cond_d

    add-int/lit8 v6, v6, 0x1

    move v13, v2

    move-object/from16 v2, v23

    const/4 v10, 0x7

    goto/16 :goto_2

    :cond_d
    return-object v1
.end method

.method public registerProvider(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;
    .locals 2

    .line 127
    invoke-static {p1}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->access$fastIsBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;->valueProviders:Landroidx/collection/MutableScatterMap;

    .line 176
    invoke-virtual {v0, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-virtual {v0, p1, v1}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    check-cast v1, Ljava/util/List;

    .line 128
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;

    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;-><init>(Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-object v0

    .line 127
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Registered key is empty or blank"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
