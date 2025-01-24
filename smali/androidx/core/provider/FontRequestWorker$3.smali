.class Landroidx/core/provider/FontRequestWorker$3;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$requests:Ljava/util/List;

.field final synthetic val$style:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)V
    .locals 0

    .line 200
    iput-object p1, p0, Landroidx/core/provider/FontRequestWorker$3;->val$id:Ljava/lang/String;

    iput-object p2, p0, Landroidx/core/provider/FontRequestWorker$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Landroidx/core/provider/FontRequestWorker$3;->val$requests:Ljava/util/List;

    iput p4, p0, Landroidx/core/provider/FontRequestWorker$3;->val$style:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroidx/core/provider/FontRequestWorker$TypefaceResult;
    .locals 3

    .line 204
    :try_start_0
    iget-object v0, p0, Landroidx/core/provider/FontRequestWorker$3;->val$id:Ljava/lang/String;

    iget-object v1, p0, Landroidx/core/provider/FontRequestWorker$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/core/provider/FontRequestWorker$3;->val$requests:Ljava/util/List;

    iget p0, p0, Landroidx/core/provider/FontRequestWorker$3;->val$style:I

    invoke-static {v0, v1, v2, p0}, Landroidx/core/provider/FontRequestWorker;->getFontSync(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 206
    :catchall_0
    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    const/4 v0, -0x3

    invoke-direct {p0, v0}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    .line 200
    invoke-virtual {p0}, Landroidx/core/provider/FontRequestWorker$3;->call()Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    move-result-object p0

    return-object p0
.end method
