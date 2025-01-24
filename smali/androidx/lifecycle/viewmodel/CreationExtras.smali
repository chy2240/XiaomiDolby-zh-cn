.class public abstract Landroidx/lifecycle/viewmodel/CreationExtras;
.super Ljava/lang/Object;
.source "CreationExtras.kt"


# static fields
.field public static final Companion:Landroidx/lifecycle/viewmodel/CreationExtras$Companion;


# instance fields
.field private final extras:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/lifecycle/viewmodel/CreationExtras$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/viewmodel/CreationExtras$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/lifecycle/viewmodel/CreationExtras;->Companion:Landroidx/lifecycle/viewmodel/CreationExtras$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/viewmodel/CreationExtras;->extras:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 50
    instance-of v0, p1, Landroidx/lifecycle/viewmodel/CreationExtras;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/lifecycle/viewmodel/CreationExtras;->extras:Ljava/util/Map;

    check-cast p1, Landroidx/lifecycle/viewmodel/CreationExtras;

    iget-object p1, p1, Landroidx/lifecycle/viewmodel/CreationExtras;->extras:Ljava/util/Map;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;
.end method

.method public final getExtras$lifecycle_viewmodel_release()Ljava/util/Map;
    .locals 0

    .line 35
    iget-object p0, p0, Landroidx/lifecycle/viewmodel/CreationExtras;->extras:Ljava/util/Map;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 53
    iget-object p0, p0, Landroidx/lifecycle/viewmodel/CreationExtras;->extras:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreationExtras(extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/lifecycle/viewmodel/CreationExtras;->extras:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
