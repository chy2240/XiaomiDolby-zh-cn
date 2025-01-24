.class public final Landroidx/compose/ui/graphics/vector/ImageVector$Companion;
.super Ljava/lang/Object;
.source "ImageVector.kt"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final generateImageVectorId$ui_release()I
    .locals 2

    .line 38
    monitor-enter p0

    .line 383
    :try_start_0
    invoke-static {}, Landroidx/compose/ui/graphics/vector/ImageVector;->access$getImageVectorCount$cp()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Landroidx/compose/ui/graphics/vector/ImageVector;->access$setImageVectorCount$cp(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
