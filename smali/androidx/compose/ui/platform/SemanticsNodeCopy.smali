.class public final Landroidx/compose/ui/platform/SemanticsNodeCopy;
.super Ljava/lang/Object;
.source "SemanticsUtils.android.kt"


# instance fields
.field private final children:Landroidx/collection/MutableIntSet;

.field private final isTransparent:Z

.field private final unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/IntObjectMap;)V
    .locals 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/SemanticsNodeCopy;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 52
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->isTransparent$ui_release()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Landroidx/compose/ui/platform/SemanticsNodeCopy;->isTransparent:Z

    .line 53
    new-instance v0, Landroidx/collection/MutableIntSet;

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getReplacedChildren$ui_release()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Landroidx/collection/MutableIntSet;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/ui/platform/SemanticsNodeCopy;->children:Landroidx/collection/MutableIntSet;

    .line 56
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getReplacedChildren$ui_release()Ljava/util/List;

    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 35
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 36
    check-cast v2, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 57
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v3

    invoke-virtual {p2, v3}, Landroidx/collection/IntObjectMap;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    iget-object v3, p0, Landroidx/compose/ui/platform/SemanticsNodeCopy;->children:Landroidx/collection/MutableIntSet;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/collection/MutableIntSet;->add(I)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final getChildren()Landroidx/collection/MutableIntSet;
    .locals 0

    .line 53
    iget-object p0, p0, Landroidx/compose/ui/platform/SemanticsNodeCopy;->children:Landroidx/collection/MutableIntSet;

    return-object p0
.end method

.method public final getUnmergedConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/compose/ui/platform/SemanticsNodeCopy;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    return-object p0
.end method

.method public final isTransparent()Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Landroidx/compose/ui/platform/SemanticsNodeCopy;->isTransparent:Z

    return p0
.end method
