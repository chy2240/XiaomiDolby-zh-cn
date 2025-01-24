.class public final Landroidx/compose/ui/text/font/FontMatcher;
.super Ljava/lang/Object;
.source "FontMatcher.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final matchFont-RetOiIg(Ljava/util/List;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/util/List;
    .locals 7

    .line 230
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 231
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/text/font/Font;

    .line 46
    invoke-interface {v4}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v5

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Landroidx/compose/ui/text/font/Font;->getStyle-_-LCdwA()I

    move-result v4

    invoke-static {v4, p3}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    return-object p0

    .line 230
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 231
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/text/font/Font;

    .line 55
    invoke-interface {v4}, Landroidx/compose/ui/text/font/Font;->getStyle-_-LCdwA()I

    move-result v4

    invoke-static {v4, p3}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 231
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 55
    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    move-object p1, p0

    .line 59
    :goto_2
    sget-object p0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW400()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result p3

    const/4 v0, 0x0

    if-gez p3, :cond_e

    .line 112
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p0

    move-object p3, v0

    move v2, v1

    :goto_3
    if-ge v2, p0, :cond_b

    .line 113
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/font/Font;

    .line 114
    invoke-interface {v3}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v3

    .line 121
    invoke-virtual {v3, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v4

    if-gez v4, :cond_7

    if-eqz v0, :cond_6

    .line 122
    invoke-virtual {v3, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v4

    if-lez v4, :cond_9

    :cond_6
    move-object v0, v3

    goto :goto_4

    .line 125
    :cond_7
    invoke-virtual {v3, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v4

    if-lez v4, :cond_a

    if-eqz p3, :cond_8

    .line 126
    invoke-virtual {v3, p3}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v4

    if-gez v4, :cond_9

    :cond_8
    move-object p3, v3

    :cond_9
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    move-object p3, v3

    move-object v0, p3

    :cond_b
    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    move-object p3, v0

    .line 230
    :goto_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    :goto_6
    if-ge v1, p2, :cond_2b

    .line 35
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 231
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/text/font/Font;

    .line 142
    invoke-interface {v2}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v2

    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 231
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 67
    :cond_e
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW500()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result p3

    if-lez p3, :cond_17

    .line 112
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p0

    move-object p3, v0

    move v2, v1

    :goto_7
    if-ge v2, p0, :cond_14

    .line 113
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/font/Font;

    .line 114
    invoke-interface {v3}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v3

    .line 121
    invoke-virtual {v3, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v4

    if-gez v4, :cond_10

    if-eqz v0, :cond_f

    .line 122
    invoke-virtual {v3, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v4

    if-lez v4, :cond_12

    :cond_f
    move-object v0, v3

    goto :goto_8

    .line 125
    :cond_10
    invoke-virtual {v3, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v4

    if-lez v4, :cond_13

    if-eqz p3, :cond_11

    .line 126
    invoke-virtual {v3, p3}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v4

    if-gez v4, :cond_12

    :cond_11
    move-object p3, v3

    :cond_12
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_13
    move-object p3, v3

    move-object v0, p3

    :cond_14
    if-nez p3, :cond_15

    move-object p3, v0

    .line 230
    :cond_15
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    :goto_9
    if-ge v1, p2, :cond_2b

    .line 35
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 231
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/text/font/Font;

    .line 142
    invoke-interface {v2}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v2

    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 231
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 86
    :cond_17
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW500()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p0

    .line 112
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p3

    move-object v3, v0

    move-object v4, v3

    move v2, v1

    :goto_a
    if-ge v2, p3, :cond_1e

    .line 113
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/font/Font;

    .line 114
    invoke-interface {v5}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v5

    if-eqz p0, :cond_18

    .line 118
    invoke-virtual {v5, p0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v6

    if-lez v6, :cond_18

    goto :goto_b

    .line 121
    :cond_18
    invoke-virtual {v5, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v6

    if-gez v6, :cond_1a

    if-eqz v3, :cond_19

    .line 122
    invoke-virtual {v5, v3}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v6

    if-lez v6, :cond_1c

    :cond_19
    move-object v3, v5

    goto :goto_b

    .line 125
    :cond_1a
    invoke-virtual {v5, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v6

    if-lez v6, :cond_1d

    if-eqz v4, :cond_1b

    .line 126
    invoke-virtual {v5, v4}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v6

    if-gez v6, :cond_1c

    :cond_1b
    move-object v4, v5

    :cond_1c
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1d
    move-object v3, v5

    move-object v4, v3

    :cond_1e
    if-nez v4, :cond_1f

    goto :goto_c

    :cond_1f
    move-object v3, v4

    .line 230
    :goto_c
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p3

    move v2, v1

    :goto_d
    if-ge v2, p3, :cond_21

    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 231
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/text/font/Font;

    .line 142
    invoke-interface {v5}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 231
    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 88
    :cond_21
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2b

    .line 92
    sget-object p0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW500()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p0

    .line 112
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p3

    move-object v2, v0

    move v3, v1

    :goto_e
    if-ge v3, p3, :cond_28

    .line 113
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/font/Font;

    .line 114
    invoke-interface {v4}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v4

    if-eqz p0, :cond_22

    .line 115
    invoke-virtual {v4, p0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-gez v5, :cond_22

    goto :goto_f

    .line 121
    :cond_22
    invoke-virtual {v4, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-gez v5, :cond_24

    if-eqz v0, :cond_23

    .line 122
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-lez v5, :cond_26

    :cond_23
    move-object v0, v4

    goto :goto_f

    .line 125
    :cond_24
    invoke-virtual {v4, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-lez v5, :cond_27

    if-eqz v2, :cond_25

    .line 126
    invoke-virtual {v4, v2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-gez v5, :cond_26

    :cond_25
    move-object v2, v4

    :cond_26
    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_27
    move-object v0, v4

    move-object v2, v0

    :cond_28
    if-nez v2, :cond_29

    goto :goto_10

    :cond_29
    move-object v0, v2

    .line 230
    :goto_10
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    :goto_11
    if-ge v1, p2, :cond_2b

    .line 35
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 231
    move-object v2, p3

    check-cast v2, Landroidx/compose/ui/text/font/Font;

    .line 142
    invoke-interface {v2}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 231
    invoke-interface {p0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_2b
    return-object p0
.end method
