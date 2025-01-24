.class public final Landroidx/activity/result/ActivityResultRegistry$register$3;
.super Landroidx/activity/result/ActivityResultLauncher;
.source "ActivityResultRegistry.kt"


# instance fields
.field final synthetic $contract:Landroidx/activity/result/contract/ActivityResultContract;

.field final synthetic $key:Ljava/lang/String;

.field final synthetic this$0:Landroidx/activity/result/ActivityResultRegistry;


# direct methods
.method constructor <init>(Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$register$3;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$register$3;->$key:Ljava/lang/String;

    iput-object p3, p0, Landroidx/activity/result/ActivityResultRegistry$register$3;->$contract:Landroidx/activity/result/contract/ActivityResultContract;

    .line 181
    invoke-direct {p0}, Landroidx/activity/result/ActivityResultLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method public unregister()V
    .locals 1

    .line 199
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$register$3;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iget-object p0, p0, Landroidx/activity/result/ActivityResultRegistry$register$3;->$key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroidx/activity/result/ActivityResultRegistry;->unregister$activity_release(Ljava/lang/String;)V

    return-void
.end method
