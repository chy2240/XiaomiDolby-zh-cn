.class Landroidx/fragment/app/DialogFragment$3;
.super Ljava/lang/Object;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/DialogFragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/DialogFragment;)V
    .locals 0

    .line 370
    iput-object p1, p0, Landroidx/fragment/app/DialogFragment$3;->this$0:Landroidx/fragment/app/DialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 373
    iget-object p1, p0, Landroidx/fragment/app/DialogFragment$3;->this$0:Landroidx/fragment/app/DialogFragment;

    invoke-static {p1}, Landroidx/fragment/app/DialogFragment;->access$000(Landroidx/fragment/app/DialogFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 374
    iget-object p0, p0, Landroidx/fragment/app/DialogFragment$3;->this$0:Landroidx/fragment/app/DialogFragment;

    invoke-static {p0}, Landroidx/fragment/app/DialogFragment;->access$000(Landroidx/fragment/app/DialogFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
