.class Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ListPopupWindow;)V
    .locals 0

    .line 1340
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1345
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1347
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 1353
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    return-void
.end method
