.class public final Landroidx/compose/ui/window/PopupProperties;
.super Ljava/lang/Object;
.source "AndroidPopup.android.kt"


# instance fields
.field private final dismissOnBackPress:Z

.field private final dismissOnClickOutside:Z

.field private final excludeFromSystemGesture:Z

.field private final flags:I

.field private final inheritSecurePolicy:Z

.field private final usePlatformDefaultWidth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(IZZZZZ)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Landroidx/compose/ui/window/PopupProperties;->flags:I

    .line 116
    iput-boolean p2, p0, Landroidx/compose/ui/window/PopupProperties;->inheritSecurePolicy:Z

    .line 117
    iput-boolean p3, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnBackPress:Z

    .line 118
    iput-boolean p4, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnClickOutside:Z

    .line 119
    iput-boolean p5, p0, Landroidx/compose/ui/window/PopupProperties;->excludeFromSystemGesture:Z

    .line 120
    iput-boolean p6, p0, Landroidx/compose/ui/window/PopupProperties;->usePlatformDefaultWidth:Z

    return-void
.end method

.method public synthetic constructor <init>(IZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    and-int/lit8 v3, p7, 0x8

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, p4

    :goto_2
    and-int/lit8 v4, p7, 0x10

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v1, p5

    :goto_3
    and-int/lit8 v4, p7, 0x20

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    move v4, p6

    :goto_4
    move-object p2, p0

    move p3, p1

    move p4, v0

    move p5, v2

    move p6, v3

    move p7, v1

    move p8, v4

    .line 114
    invoke-direct/range {p2 .. p8}, Landroidx/compose/ui/window/PopupProperties;-><init>(IZZZZZ)V

    return-void
.end method

.method public constructor <init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZ)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 143
    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZZ)V

    return-void
.end method

.method public synthetic constructor <init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x1

    if-eqz p8, :cond_1

    move p8, v0

    goto :goto_0

    :cond_1
    move p8, p2

    :goto_0
    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    .line 140
    sget-object p4, Landroidx/compose/ui/window/SecureFlagPolicy;->Inherit:Landroidx/compose/ui/window/SecureFlagPolicy;

    :cond_3
    move-object v2, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    move v3, v0

    goto :goto_2

    :cond_4
    move v3, p5

    :goto_2
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    move v0, p6

    :goto_3
    move-object p2, p0

    move p3, p1

    move p4, p8

    move p5, v1

    move-object p6, v2

    move p7, v3

    move p8, v0

    .line 136
    invoke-direct/range {p2 .. p8}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZ)V

    return-void
.end method

.method public constructor <init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZZ)V
    .locals 7

    .line 185
    invoke-static {p1, p4, p6}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->access$createFlags(ZLandroidx/compose/ui/window/SecureFlagPolicy;Z)I

    move-result v1

    .line 186
    sget-object p1, Landroidx/compose/ui/window/SecureFlagPolicy;->Inherit:Landroidx/compose/ui/window/SecureFlagPolicy;

    if-ne p4, p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    move v2, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p5

    move v6, p7

    .line 184
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/window/PopupProperties;-><init>(IZZZZZ)V

    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 7

    .line 131
    sget-object v4, Landroidx/compose/ui/window/SecureFlagPolicy;->Inherit:Landroidx/compose/ui/window/SecureFlagPolicy;

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    .line 127
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZ)V

    return-void
.end method

.method public synthetic constructor <init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    .line 122
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 219
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/window/PopupProperties;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 221
    :cond_1
    iget v1, p0, Landroidx/compose/ui/window/PopupProperties;->flags:I

    check-cast p1, Landroidx/compose/ui/window/PopupProperties;

    iget v3, p1, Landroidx/compose/ui/window/PopupProperties;->flags:I

    if-eq v1, v3, :cond_2

    return v2

    .line 222
    :cond_2
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->inheritSecurePolicy:Z

    iget-boolean v3, p1, Landroidx/compose/ui/window/PopupProperties;->inheritSecurePolicy:Z

    if-eq v1, v3, :cond_3

    return v2

    .line 223
    :cond_3
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnBackPress:Z

    iget-boolean v3, p1, Landroidx/compose/ui/window/PopupProperties;->dismissOnBackPress:Z

    if-eq v1, v3, :cond_4

    return v2

    .line 224
    :cond_4
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnClickOutside:Z

    iget-boolean v3, p1, Landroidx/compose/ui/window/PopupProperties;->dismissOnClickOutside:Z

    if-eq v1, v3, :cond_5

    return v2

    .line 225
    :cond_5
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->excludeFromSystemGesture:Z

    iget-boolean v3, p1, Landroidx/compose/ui/window/PopupProperties;->excludeFromSystemGesture:Z

    if-eq v1, v3, :cond_6

    return v2

    .line 226
    :cond_6
    iget-boolean p0, p0, Landroidx/compose/ui/window/PopupProperties;->usePlatformDefaultWidth:Z

    iget-boolean p1, p1, Landroidx/compose/ui/window/PopupProperties;->usePlatformDefaultWidth:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getDismissOnBackPress()Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnBackPress:Z

    return p0
.end method

.method public final getDismissOnClickOutside()Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnClickOutside:Z

    return p0
.end method

.method public final getExcludeFromSystemGesture()Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Landroidx/compose/ui/window/PopupProperties;->excludeFromSystemGesture:Z

    return p0
.end method

.method public final getFlags$ui_release()I
    .locals 0

    .line 115
    iget p0, p0, Landroidx/compose/ui/window/PopupProperties;->flags:I

    return p0
.end method

.method public final getInheritSecurePolicy$ui_release()Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Landroidx/compose/ui/window/PopupProperties;->inheritSecurePolicy:Z

    return p0
.end method

.method public final getUsePlatformDefaultWidth()Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Landroidx/compose/ui/window/PopupProperties;->usePlatformDefaultWidth:Z

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 232
    iget v0, p0, Landroidx/compose/ui/window/PopupProperties;->flags:I

    mul-int/lit8 v0, v0, 0x1f

    .line 233
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->inheritSecurePolicy:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 234
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnBackPress:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 235
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->dismissOnClickOutside:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 236
    iget-boolean v1, p0, Landroidx/compose/ui/window/PopupProperties;->excludeFromSystemGesture:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 237
    iget-boolean p0, p0, Landroidx/compose/ui/window/PopupProperties;->usePlatformDefaultWidth:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
