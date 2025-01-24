.class public abstract Landroidx/fragment/app/FragmentHostCallback;
.super Landroidx/fragment/app/FragmentContainer;
.source "FragmentHostCallback.kt"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final context:Landroid/content/Context;

.field private final fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final handler:Landroid/os/Handler;

.field private final windowAnimations:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Landroidx/fragment/app/FragmentContainer;-><init>()V

    .line 58
    iput-object p1, p0, Landroidx/fragment/app/FragmentHostCallback;->activity:Landroid/app/Activity;

    .line 59
    iput-object p2, p0, Landroidx/fragment/app/FragmentHostCallback;->context:Landroid/content/Context;

    .line 60
    iput-object p3, p0, Landroidx/fragment/app/FragmentHostCallback;->handler:Landroid/os/Handler;

    .line 61
    iput p4, p0, Landroidx/fragment/app/FragmentHostCallback;->windowAnimations:I

    .line 65
    new-instance p1, Landroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {p1}, Landroidx/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentHostCallback;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroidx/fragment/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method public final getActivity()Landroid/app/Activity;
    .locals 0

    .line 58
    iget-object p0, p0, Landroidx/fragment/app/FragmentHostCallback;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Landroidx/fragment/app/FragmentHostCallback;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 0

    .line 65
    iget-object p0, p0, Landroidx/fragment/app/FragmentHostCallback;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-object p0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 0

    .line 60
    iget-object p0, p0, Landroidx/fragment/app/FragmentHostCallback;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public abstract onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract onGetHost()Ljava/lang/Object;
.end method

.method public abstract onGetLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method public abstract onSupportInvalidateOptionsMenu()V
.end method
