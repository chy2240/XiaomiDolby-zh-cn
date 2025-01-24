.class Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "HeaderRecyclerView.java"


# instance fields
.field final synthetic this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-static {v0}, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->-$$Nest$fgetheader(Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method
