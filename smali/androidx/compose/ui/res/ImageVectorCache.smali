.class public final Landroidx/compose/ui/res/ImageVectorCache;
.super Ljava/lang/Object;
.source "VectorResources.android.kt"


# instance fields
.field private final map:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/res/ImageVectorCache;->map:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 137
    iget-object p0, p0, Landroidx/compose/ui/res/ImageVectorCache;->map:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final prune(I)V
    .locals 1

    .line 119
    iget-object p0, p0, Landroidx/compose/ui/res/ImageVectorCache;->map:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 120
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0}, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;->getConfigFlags()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method
