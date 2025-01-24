.class public final Lco/aospa/dolby/xiaomi/geq/data/Preset;
.super Ljava/lang/Object;
.source "Preset.kt"


# instance fields
.field private final bandGains:Ljava/util/List;

.field private isMutated:Z

.field private isUserDefined:Z

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bandGains"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->name:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->bandGains:Ljava/util/List;

    .line 12
    iput-boolean p3, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->isUserDefined:Z

    .line 13
    iput-boolean p4, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->isMutated:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v0

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lco/aospa/dolby/xiaomi/geq/data/Preset;-><init>(Ljava/lang/String;Ljava/util/List;ZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lco/aospa/dolby/xiaomi/geq/data/Preset;Ljava/lang/String;Ljava/util/List;ZZILjava/lang/Object;)Lco/aospa/dolby/xiaomi/geq/data/Preset;
    .locals 0

    .line 0
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->bandGains:Ljava/util/List;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->isUserDefined:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->isMutated:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lco/aospa/dolby/xiaomi/geq/data/Preset;->copy(Ljava/lang/String;Ljava/util/List;ZZ)Lco/aospa/dolby/xiaomi/geq/data/Preset;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/util/List;ZZ)Lco/aospa/dolby/xiaomi/geq/data/Preset;
    .locals 0

    .line 0
    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bandGains"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;

    invoke-direct {p0, p1, p2, p3, p4}, Lco/aospa/dolby/xiaomi/geq/data/Preset;-><init>(Ljava/lang/String;Ljava/util/List;ZZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lco/aospa/dolby/xiaomi/geq/data/Preset;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lco/aospa/dolby/xiaomi/geq/data/Preset;

    iget-object v1, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->name:Ljava/lang/String;

    iget-object v3, p1, Lco/aospa/dolby/xiaomi/geq/data/Preset;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->bandGains:Ljava/util/List;

    iget-object v3, p1, Lco/aospa/dolby/xiaomi/geq/data/Preset;->bandGains:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->isUserDefined:Z

    iget-boolean v3, p1, Lco/aospa/dolby/xiaomi/geq/data/Preset;->isUserDefined:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->isMutated:Z

    iget-boolean p1, p1, Lco/aospa/dolby/xiaomi/geq/data/Preset;->isMutated:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBandGains()Ljava/util/List;
    .locals 0

    .line 11
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->bandGains:Ljava/util/List;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->name:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->bandGains:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->isUserDefined:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->isMutated:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isUserDefined()Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->isUserDefined:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 0
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->name:Ljava/lang/String;

    iget-object v1, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->bandGains:Ljava/util/List;

    iget-boolean v2, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->isUserDefined:Z

    iget-boolean p0, p0, Lco/aospa/dolby/xiaomi/geq/data/Preset;->isMutated:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preset(name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bandGains="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isUserDefined="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isMutated="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
