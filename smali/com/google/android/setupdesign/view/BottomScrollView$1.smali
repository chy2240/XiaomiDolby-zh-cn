.class Lcom/google/android/setupdesign/view/BottomScrollView$1;
.super Ljava/lang/Object;
.source "BottomScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/android/setupdesign/view/BottomScrollView;


# direct methods
.method constructor <init>(Lcom/google/android/setupdesign/view/BottomScrollView;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/google/android/setupdesign/view/BottomScrollView$1;->this$0:Lcom/google/android/setupdesign/view/BottomScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/setupdesign/view/BottomScrollView$1;->this$0:Lcom/google/android/setupdesign/view/BottomScrollView;

    invoke-static {p0}, Lcom/google/android/setupdesign/view/BottomScrollView;->-$$Nest$mcheckScroll(Lcom/google/android/setupdesign/view/BottomScrollView;)V

    return-void
.end method
