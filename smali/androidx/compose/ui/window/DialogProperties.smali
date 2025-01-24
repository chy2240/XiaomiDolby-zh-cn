.class public final Landroidx/compose/ui/window/DialogProperties;
.super Ljava/lang/Object;
.source "AndroidDialog.android.kt"


# instance fields
.field private final decorFitsSystemWindows:Z

.field private final dismissOnBackPress:Z

.field private final dismissOnClickOutside:Z

.field private final securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

.field private final usePlatformDefaultWidth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(ZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZ)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-boolean p1, p0, Landroidx/compose/ui/window/DialogProperties;->dismissOnBackPress:Z

    .line 103
    iput-boolean p2, p0, Landroidx/compose/ui/window/DialogProperties;->dismissOnClickOutside:Z

    .line 104
    iput-object p3, p0, Landroidx/compose/ui/window/DialogProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    .line 105
    iput-boolean p4, p0, Landroidx/compose/ui/window/DialogProperties;->usePlatformDefaultWidth:Z

    .line 106
    iput-boolean p5, p0, Landroidx/compose/ui/window/DialogProperties;->decorFitsSystemWindows:Z

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 6

    .line 115
    sget-object v3, Landroidx/compose/ui/window/SecureFlagPolicy;->Inherit:Landroidx/compose/ui/window/SecureFlagPolicy;

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    .line 112
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/window/DialogProperties;-><init>(ZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZ)V

    return-void
.end method

.method public synthetic constructor <init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    .line 108
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/window/DialogProperties;-><init>(ZZZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 135
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/window/DialogProperties;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 137
    :cond_1
    iget-boolean v1, p0, Landroidx/compose/ui/window/DialogProperties;->dismissOnBackPress:Z

    check-cast p1, Landroidx/compose/ui/window/DialogProperties;

    iget-boolean v3, p1, Landroidx/compose/ui/window/DialogProperties;->dismissOnBackPress:Z

    if-eq v1, v3, :cond_2

    return v2

    .line 138
    :cond_2
    iget-boolean v1, p0, Landroidx/compose/ui/window/DialogProperties;->dismissOnClickOutside:Z

    iget-boolean v3, p1, Landroidx/compose/ui/window/DialogProperties;->dismissOnClickOutside:Z

    if-eq v1, v3, :cond_3

    return v2

    .line 139
    :cond_3
    iget-object v1, p0, Landroidx/compose/ui/window/DialogProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    iget-object v3, p1, Landroidx/compose/ui/window/DialogProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    if-eq v1, v3, :cond_4

    return v2

    .line 140
    :cond_4
    iget-boolean v1, p0, Landroidx/compose/ui/window/DialogProperties;->usePlatformDefaultWidth:Z

    iget-boolean v3, p1, Landroidx/compose/ui/window/DialogProperties;->usePlatformDefaultWidth:Z

    if-eq v1, v3, :cond_5

    return v2

    .line 141
    :cond_5
    iget-boolean p0, p0, Landroidx/compose/ui/window/DialogProperties;->decorFitsSystemWindows:Z

    iget-boolean p1, p1, Landroidx/compose/ui/window/DialogProperties;->decorFitsSystemWindows:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getDecorFitsSystemWindows()Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Landroidx/compose/ui/window/DialogProperties;->decorFitsSystemWindows:Z

    return p0
.end method

.method public final getDismissOnBackPress()Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Landroidx/compose/ui/window/DialogProperties;->dismissOnBackPress:Z

    return p0
.end method

.method public final getDismissOnClickOutside()Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Landroidx/compose/ui/window/DialogProperties;->dismissOnClickOutside:Z

    return p0
.end method

.method public final getSecurePolicy()Landroidx/compose/ui/window/SecureFlagPolicy;
    .locals 0

    .line 104
    iget-object p0, p0, Landroidx/compose/ui/window/DialogProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    return-object p0
.end method

.method public final getUsePlatformDefaultWidth()Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Landroidx/compose/ui/window/DialogProperties;->usePlatformDefaultWidth:Z

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 147
    iget-boolean v0, p0, Landroidx/compose/ui/window/DialogProperties;->dismissOnBackPress:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 148
    iget-boolean v1, p0, Landroidx/compose/ui/window/DialogProperties;->dismissOnClickOutside:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 149
    iget-object v1, p0, Landroidx/compose/ui/window/DialogProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 150
    iget-boolean v1, p0, Landroidx/compose/ui/window/DialogProperties;->usePlatformDefaultWidth:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 151
    iget-boolean p0, p0, Landroidx/compose/ui/window/DialogProperties;->decorFitsSystemWindows:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
