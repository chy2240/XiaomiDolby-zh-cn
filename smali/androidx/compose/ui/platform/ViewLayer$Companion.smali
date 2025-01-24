.class public final Landroidx/compose/ui/platform/ViewLayer$Companion;
.super Ljava/lang/Object;
.source "ViewLayer.android.kt"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/compose/ui/platform/ViewLayer$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHasRetrievedMethod()Z
    .locals 0

    .line 427
    invoke-static {}, Landroidx/compose/ui/platform/ViewLayer;->access$getHasRetrievedMethod$cp()Z

    move-result p0

    return p0
.end method

.method public final getShouldUseDispatchDraw()Z
    .locals 0

    .line 430
    invoke-static {}, Landroidx/compose/ui/platform/ViewLayer;->access$getShouldUseDispatchDraw$cp()Z

    move-result p0

    return p0
.end method

.method public final setShouldUseDispatchDraw$ui_release(Z)V
    .locals 0

    .line 431
    invoke-static {p1}, Landroidx/compose/ui/platform/ViewLayer;->access$setShouldUseDispatchDraw$cp(Z)V

    return-void
.end method

.method public final updateDisplayList(Landroid/view/View;)V
    .locals 7

    .line 435
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x1

    .line 436
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/ViewLayer$Companion;->getHasRetrievedMethod()Z

    move-result v2

    if-nez v2, :cond_2

    .line 437
    invoke-static {v1}, Landroidx/compose/ui/platform/ViewLayer;->access$setHasRetrievedMethod$cp(Z)V

    .line 446
    const-class v2, Ljava/lang/Class;

    .line 448
    const-string v3, "getDeclaredMethod"

    const/4 v4, 0x2

    .line 449
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 450
    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v1

    .line 447
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 454
    const-class v3, Landroid/view/View;

    .line 455
    const-string v4, "updateDisplayListIfDirty"

    .line 456
    new-array v6, v5, [Ljava/lang/Class;

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 453
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 452
    invoke-static {v2}, Landroidx/compose/ui/platform/ViewLayer;->access$setUpdateDisplayListIfDirtyMethod$cp(Ljava/lang/reflect/Method;)V

    .line 460
    const-class v2, Ljava/lang/Class;

    .line 461
    const-string v3, "getDeclaredField"

    new-array v4, v1, [Ljava/lang/Class;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 463
    const-class v2, Landroid/view/View;

    const-string v3, "mRecreateDisplayList"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 462
    invoke-static {v0}, Landroidx/compose/ui/platform/ViewLayer;->access$setRecreateDisplayList$cp(Ljava/lang/reflect/Field;)V

    .line 466
    invoke-static {}, Landroidx/compose/ui/platform/ViewLayer;->access$getUpdateDisplayListIfDirtyMethod$cp()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 467
    :goto_0
    invoke-static {}, Landroidx/compose/ui/platform/ViewLayer;->access$getRecreateDisplayList$cp()Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 469
    :cond_2
    :goto_1
    invoke-static {}, Landroidx/compose/ui/platform/ViewLayer;->access$getRecreateDisplayList$cp()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 470
    :cond_3
    invoke-static {}, Landroidx/compose/ui/platform/ViewLayer;->access$getUpdateDisplayListIfDirtyMethod$cp()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 472
    :catchall_0
    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/ViewLayer$Companion;->setShouldUseDispatchDraw$ui_release(Z)V

    :cond_4
    :goto_2
    return-void
.end method
