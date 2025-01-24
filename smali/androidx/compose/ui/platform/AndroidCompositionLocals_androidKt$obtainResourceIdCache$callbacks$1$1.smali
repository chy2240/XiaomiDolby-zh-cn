.class public final Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainResourceIdCache$callbacks$1$1;
.super Ljava/lang/Object;
.source "AndroidCompositionLocals.android.kt"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field final synthetic $resourceIdCache:Landroidx/compose/ui/res/ResourceIdCache;


# direct methods
.method constructor <init>(Landroidx/compose/ui/res/ResourceIdCache;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainResourceIdCache$callbacks$1$1;->$resourceIdCache:Landroidx/compose/ui/res/ResourceIdCache;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 124
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainResourceIdCache$callbacks$1$1;->$resourceIdCache:Landroidx/compose/ui/res/ResourceIdCache;

    invoke-virtual {p0}, Landroidx/compose/ui/res/ResourceIdCache;->clear()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 129
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainResourceIdCache$callbacks$1$1;->$resourceIdCache:Landroidx/compose/ui/res/ResourceIdCache;

    invoke-virtual {p0}, Landroidx/compose/ui/res/ResourceIdCache;->clear()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 133
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainResourceIdCache$callbacks$1$1;->$resourceIdCache:Landroidx/compose/ui/res/ResourceIdCache;

    invoke-virtual {p0}, Landroidx/compose/ui/res/ResourceIdCache;->clear()V

    return-void
.end method
