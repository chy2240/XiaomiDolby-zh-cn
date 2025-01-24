.class public final Landroidx/window/embedding/ParentContainerInfo;
.super Ljava/lang/Object;
.source "ParentContainerInfo.kt"


# instance fields
.field private final configuration:Landroid/content/res/Configuration;

.field private final density:F

.field private final windowBounds:Landroidx/window/core/Bounds;

.field private final windowInsets:Landroidx/core/view/WindowInsetsCompat;

.field private final windowLayoutInfo:Landroidx/window/layout/WindowLayoutInfo;


# direct methods
.method public constructor <init>(Landroidx/window/core/Bounds;Landroidx/window/layout/WindowLayoutInfo;Landroidx/core/view/WindowInsetsCompat;Landroid/content/res/Configuration;F)V
    .locals 1

    const-string v0, "windowBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowLayoutInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowInsets"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/window/embedding/ParentContainerInfo;->windowBounds:Landroidx/window/core/Bounds;

    .line 38
    iput-object p2, p0, Landroidx/window/embedding/ParentContainerInfo;->windowLayoutInfo:Landroidx/window/layout/WindowLayoutInfo;

    .line 40
    iput-object p3, p0, Landroidx/window/embedding/ParentContainerInfo;->windowInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 42
    iput-object p4, p0, Landroidx/window/embedding/ParentContainerInfo;->configuration:Landroid/content/res/Configuration;

    .line 47
    iput p5, p0, Landroidx/window/embedding/ParentContainerInfo;->density:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/ParentContainerInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/window/embedding/ParentContainerInfo;

    iget-object v1, p0, Landroidx/window/embedding/ParentContainerInfo;->windowBounds:Landroidx/window/core/Bounds;

    iget-object v3, p1, Landroidx/window/embedding/ParentContainerInfo;->windowBounds:Landroidx/window/core/Bounds;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/window/embedding/ParentContainerInfo;->windowLayoutInfo:Landroidx/window/layout/WindowLayoutInfo;

    iget-object v3, p1, Landroidx/window/embedding/ParentContainerInfo;->windowLayoutInfo:Landroidx/window/layout/WindowLayoutInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/window/embedding/ParentContainerInfo;->windowInsets:Landroidx/core/view/WindowInsetsCompat;

    iget-object v3, p1, Landroidx/window/embedding/ParentContainerInfo;->windowInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/window/embedding/ParentContainerInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, p1, Landroidx/window/embedding/ParentContainerInfo;->configuration:Landroid/content/res/Configuration;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget p0, p0, Landroidx/window/embedding/ParentContainerInfo;->density:F

    iget p1, p1, Landroidx/window/embedding/ParentContainerInfo;->density:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getWindowBounds()Landroidx/window/core/Bounds;
    .locals 0

    .line 36
    iget-object p0, p0, Landroidx/window/embedding/ParentContainerInfo;->windowBounds:Landroidx/window/core/Bounds;

    return-object p0
.end method

.method public final getWindowLayoutInfo()Landroidx/window/layout/WindowLayoutInfo;
    .locals 0

    .line 38
    iget-object p0, p0, Landroidx/window/embedding/ParentContainerInfo;->windowLayoutInfo:Landroidx/window/layout/WindowLayoutInfo;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/window/embedding/ParentContainerInfo;->windowBounds:Landroidx/window/core/Bounds;

    invoke-virtual {v0}, Landroidx/window/core/Bounds;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/window/embedding/ParentContainerInfo;->windowLayoutInfo:Landroidx/window/layout/WindowLayoutInfo;

    invoke-virtual {v1}, Landroidx/window/layout/WindowLayoutInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/window/embedding/ParentContainerInfo;->windowInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/window/embedding/ParentContainerInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/window/embedding/ParentContainerInfo;->density:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParentContainerInfo(windowBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/window/embedding/ParentContainerInfo;->windowBounds:Landroidx/window/core/Bounds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", windowLayoutInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/window/embedding/ParentContainerInfo;->windowLayoutInfo:Landroidx/window/layout/WindowLayoutInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", windowInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/window/embedding/ParentContainerInfo;->windowInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/window/embedding/ParentContainerInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/window/embedding/ParentContainerInfo;->density:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
