.class Lcom/google/android/setupdesign/template/RequireScrollMixin$5;
.super Ljava/lang/Object;
.source "RequireScrollMixin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/android/setupdesign/template/RequireScrollMixin;

.field final synthetic val$scrollNeeded:Z


# direct methods
.method constructor <init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Z)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;->this$0:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    iput-boolean p2, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;->val$scrollNeeded:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;->this$0:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-static {p0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->-$$Nest$fgetlistener(Lcom/google/android/setupdesign/template/RequireScrollMixin;)Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    return-void
.end method
