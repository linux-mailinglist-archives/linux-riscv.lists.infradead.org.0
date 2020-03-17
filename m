Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 344A7187A89
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Mar 2020 08:32:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:MIME-Version:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ELEKrq4EGIxNvJukij7QP1qxKxC7FQJ2mNgE76dJU6w=; b=uQjh1PvITMGlAv10PdNdfetqM5
	kqg/+50pjlUvGgpSXSlDCXdUkYlnEDqNXSDKFmPaLcriKVgoCob56pchUrovPcavyTvNsm20tWqiP
	MyNv+vP6XdPvruJ3XM4DmSfMQELSkOKtuw3AFvYekhgKKiIrwSkp45+ujdRI4yBXpjDHfE7Ia7tZr
	Aw+4msE90uRnV/pEjgsucOl1BWsEgG4UUoGIB8dQZ8dsUfacEC7gd8fo+7D5ApzwlVpCawUMV4cP7
	TDMhWAgQ6WIXjKjeWF9UNx4pD8DLyWjWgsv+tI2xziyGspE5NKZVsMrMnjmJt4oZb5rQvRPn/6QGh
	Ih4LQMOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE6iZ-0006Y3-6Z; Tue, 17 Mar 2020 07:32:51 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE6iU-0006XS-M6; Tue, 17 Mar 2020 07:32:48 +0000
Received: by mail-pj1-x1042.google.com with SMTP id q16so2257971pje.1;
 Tue, 17 Mar 2020 00:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=ELEKrq4EGIxNvJukij7QP1qxKxC7FQJ2mNgE76dJU6w=;
 b=h5RjZl/oTXY7KK3OMW3pqqPhEpLEjIfHsIfBL3JJ5EA7fKRBhgC8tHH9w/gKjIaQKb
 AKXzv1XcO7euYvs0z4tsnHHOB0CVjfxcxwCMjHgnmj0s7pOFNksvKnpH2OrAT8uIj0Qn
 lAGu1ShMCLWF6SVB+pLRPdjKu+EtKjinw3l8C3Qez9QsSar3DPBQpLCRklmBYHatxgni
 YKgF1pzNf4rjEFaYTPzYBMlswCbruOa8wheoJmRPdS8FRZ8Ig3U6Fz6tFY64f655g0yI
 rr83/Q9vV3GORbK/gxApqwVxHHfAqCe5pqMPgnR8XCNp1f9JXG0l+a0VQtmJdxtYTn/m
 0i9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=ELEKrq4EGIxNvJukij7QP1qxKxC7FQJ2mNgE76dJU6w=;
 b=j6HRZDTQHSWPQt/GpKhQp7DrcpGmRDSOi+NtvhhsFUyhyJyitpHUxEQ1c++yd9lun5
 qaiNiu0G/vHizGp+01xhxyy98bNKdaJjXKKUiQI1LO3fJ+e23ZRuokKrFLoRGPVDVqnw
 QQWfnqdpxt0jH/wg+phg3cNVVRgYomHXsTCw9ZjXsOiHi6+AHy95ngKWJh5f7fszCLIx
 zrAT/lgkZbHY84gbx7B7BbQ0rWPWFnye2QY5wmiFFDs49Br75Ij0SUi2UNfyfi921ln5
 rDqN++5dp4nCZY4O0QRrVdJ0+bckQEVVTlsbO9aGzHBONPRUF6QkfuJnZ/kfamOqlDIR
 e15A==
X-Gm-Message-State: ANhLgQ0fsXWWekvG62DRSLPC7WR8EggLWye3GWmD7aLvfufDUEiRqW3u
 WQ5T0EUmkPhJlpcBVf+7KyqAb0T36Fb6Tf44BIOG720D
X-Google-Smtp-Source: ADFU+vsdWakfqsEGiGzqrRyJtU6SwwBqAOvh/9g1JlKCXT0Udj63Ku/4Cv+R/MHe0qITMDkxGNB2M1FmZipE8EmWwdk=
X-Received: by 2002:a17:90b:1a8f:: with SMTP id
 ng15mr3920111pjb.55.1584430365374; 
 Tue, 17 Mar 2020 00:32:45 -0700 (PDT)
MIME-Version: 1.0
From: JaeJoon Jung <rgbi3307@gmail.com>
Date: Tue, 17 Mar 2020 16:32:34 +0900
Message-ID: <CAHOvCC7ZLpOkdWPjY3art8LYOh2SJWwgqYRHRMVm-E4-kD06mA@mail.gmail.com>
Subject: [PATCH] Add next, prev pointer in xa_node at the lib/xarray.c
To: Matthew Wilcox <willy@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_003246_759524_DEE661A5 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [rgbi3307[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rgbi3307[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-riscv <linux-riscv@lists.infradead.org>, linux-kernel@vger.kernel.org,
 koct9i@gmail.com, maple-tree@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Matthew,
I add next, prev pointer in the xa_node to improve search performance.
XArray currently has the following search capabilities:

Search algorithm performance is O(n) = n x log(n)

For example,
XA_CHUNK_SHIFT 2
XA_CHUNK_SIZE 4
===============================================================================
xarray->head : xa_node : index: 0   16   32   48
                                                   +----+----+----+
                                                   |      |      |      |
                   +-----------------------+      |      |      +-------------+
                    |                   +------------+      |
              |
                    |                   |                        |
                   |
                   0  4  8  12    16  20  24  28   32  36  40  44   48
 52  56  60
                   +--+--+--+     +---+---+----+    +----+---+---+
+---+---+---+
                   |                    |                        |
                   |
     +---------+                   |                        +----+
           +---------------+
     |                                 |
 |                                     |
    0 1 2 3     ....             16 17 18 19    ....      32 33 34 35
   ....          48 49 ..

xas_for_each(xas, entry, max) \
    for (entry = xas_find(xas, max); entry; \
         entry = xas_next_entry(xas, max))

O(n) = n x log(n)

The above performance is significantly reduced if the indes are not
densely packed.
But,
If you connect the leaf node with the next and prev pointers as follows,
the search performance is improved to O (n) = n.
Below is a larger performance improvement when the indexes are not dense.
I've added enough code to tools/testing/radix-tree/benchmark.c
to fully test it on the linux v5.6-rc6
and have seen a 5% to 20% performance improvement over time.

XA_CHUNK_SHIFT 2
XA_CHUNK_SIZE  4
add next, prev pointer in leaf-node
===============================================================================
xarray->head : xa_node : index: 0  16   32   48
                                                   +---+----+----+
                                                    |    |      |      |
                  +-------------------------+    |      |     +--------------+
                  |                   +--------------+     |
              |
                  |                   |                         |
                   |
                 0  4  8  12    16  20  24  28   32  36  40  44    48
52  56  60
                 +--+--+---+    +---+---+---+     +---+---+----+
+---+---+---+
                 |                    |                       |
                  |
+-----------+                    |                       +---------+
        +--------------------+
|                                    |
    |                                       |
0 1 2 3 <==> ... <==> 16 17 18 19 <==>...<==> 32 33 34 35 <==>...<==> 48 49 ..

next loop:
xas_for_each_next_fast(xas, entry, max) \
    for (entry = xas_find(xas, max); entry; \
         entry = xas_next_fast(xas, max))
O(n) = n

prev loop:
xas_for_each_prev_fast(xas, entry, min) \
    for (entry = xas_find(xas, min); entry; \
         entry = xas_prev_fast(xas, min))
O(n) = n

===============================================================================

 include/linux/xarray.h                                |   96 +++++++
 lib/xarray.c                                                |  136 ++++++++++
 tools/testing/radix-tree/benchmark.c        |   78 ++++++
 tools/testing/radix-tree/linux.c                  |    4 +
 tools/testing/radix-tree/main.c                  |    1 +
 tools/testing/radix-tree/test.h                    |    1 +

===============================================================================

diff --git a/include/linux/xarray.h b/include/linux/xarray.h
index f73e1775ded0..bcc78459acde 100644
--- a/include/linux/xarray.h
+++ b/include/linux/xarray.h
@@ -1125,6 +1125,8 @@ struct xa_node {
        unsigned char   count;          /* Total entry count */
        unsigned char   nr_values;      /* Value entry count */
        struct xa_node __rcu *parent;   /* NULL at top of tree */
+        struct xa_node __rcu *prev;     /* previous node pointer */
+        struct xa_node __rcu *next;     /* next node pointer */
        struct xarray   *array;         /* The array we belong to */
        union {
                struct list_head private_list;  /* For tree user */
@@ -1206,6 +1208,38 @@ static inline struct xa_node
*xa_parent_locked(const struct xarray *xa,
                                                lockdep_is_held(&xa->xa_lock));
 }

+/* Private */
+static inline struct xa_node *xa_prev(const struct xarray *xa,
+                                        const struct xa_node *node)
+{
+        return rcu_dereference_check(node->prev,
+                                                lockdep_is_held(&xa->xa_lock));
+}
+
+/* Private */
+static inline struct xa_node *xa_prev_locked(const struct xarray *xa,
+                                        const struct xa_node *node)
+{
+        return rcu_dereference_protected(node->prev,
+                                                lockdep_is_held(&xa->xa_lock));
+}
+
+/* Private */
+static inline struct xa_node *xa_next(const struct xarray *xa,
+                                        const struct xa_node *node)
+{
+        return rcu_dereference_check(node->next,
+                                                lockdep_is_held(&xa->xa_lock));
+}
+
+/* Private */
+static inline struct xa_node *xa_next_locked(const struct xarray *xa,
+                                        const struct xa_node *node)
+{
+        return rcu_dereference_protected(node->next,
+                                                lockdep_is_held(&xa->xa_lock));
+}
+
 /* Private */
 static inline void *xa_mk_node(const struct xa_node *node)
 {
@@ -1611,6 +1645,60 @@ static inline void *xas_next_entry(struct
xa_state *xas, unsigned long max)
        return entry;
 }

+/* Private */
+static inline void *xas_next_fast(struct xa_state *xas, unsigned long max)
+{
+        struct xa_node *node = xas->xa_node;
+        int offset = xas->xa_offset;
+        void *entry;
+
+        do {
+                if (unlikely(xas->xa_index >= max))
+                        return xas_find(xas, max);
+                if (unlikely(xas->xa_offset == XA_CHUNK_MASK)) {
+                        node = node->next;
+                        xas->xa_node = node;
+                        offset = -1;
+                }
+                if (unlikely(xas_not_node(node)))
+                        return xas_find(xas, max);
+                entry = xa_entry(xas->xa, node, offset + 1);
+                if (unlikely(xa_is_internal(entry)))
+                        return xas_find(xas, max);
+                offset++;
+                xas->xa_offset = offset;
+                xas->xa_index = xa_to_value(entry);
+        } while (!entry);
+
+        return entry;
+}
+
+/* Private */
+static inline void *xas_prev_fast(struct xa_state *xas, unsigned long max)
+{
+       struct xa_node *node = xas->xa_node;
+       void *entry;
+
+       do {
+                if (unlikely(xas->xa_index > max))
+                       return xas_find(xas, max);
+                if (unlikely(xas->xa_offset == 0)) {
+                        node = node->prev;
+                        xas->xa_node = node;
+                        xas->xa_offset = XA_CHUNK_SIZE;
+                }
+                if (unlikely(xas_not_node(node)))
+                        return xas_find(xas, max);
+               entry = xa_entry(xas->xa, node, xas->xa_offset - 1);
+               if (unlikely(xa_is_internal(entry)))
+                        return xas_find(xas, max);
+               xas->xa_offset--;
+               xas->xa_index = xa_to_value(entry);
+       } while (!entry);
+
+       return entry;
+}
+
 /* Private */
 static inline unsigned int xas_find_chunk(struct xa_state *xas, bool advance,
                xa_mark_t mark)
@@ -1687,6 +1775,14 @@ enum {
        for (entry = xas_find(xas, max); entry; \
             entry = xas_next_entry(xas, max))

+#define xas_for_each_next_fast(xas, entry, max) \
+        for (entry = xas_find(xas, max); entry; \
+             entry = xas_next_fast(xas, max))
+
+#define xas_for_each_prev_fast(xas, entry, min) \
+        for (entry = xas_find(xas, min); entry; \
+             entry = xas_prev_fast(xas, min))
+
 /**
  * xas_for_each_marked() - Iterate over a range of an XArray.
  * @xas: XArray operation state.

===============================================================================

diff --git a/lib/xarray.c b/lib/xarray.c
index 1d9fab7db8da..92a129560b22 100644
--- a/lib/xarray.c
+++ b/lib/xarray.c
@@ -258,6 +258,106 @@ static void xa_node_free(struct xa_node *node)
        call_rcu(&node->rcu_head, radix_tree_node_rcu_free);
 }

+/*
+ * xas_node_find_prev() - find previous node in the parent.
+ * @xas: XArray operation state.
+ * @parent: parent node.
+ * @start: starting offset.
+ *
+ * This function call in the xas_alloc().
+ */
+static struct xa_node *xas_node_find_prev(struct xa_state *xas,
+                struct xa_node *parent, int offset)
+{
+        void *entry;
+        struct xa_node *prev;
+
+        while (parent) {
+                prev = NULL;
+                while (offset >= 0) {
+                        entry = xa_entry(xas->xa, parent, offset);
+                        if (xa_is_node(entry)) {
+                                prev = xa_to_node(entry);
+                                break;
+                        }
+                        offset--;
+                }
+
+                if (offset < 0) {
+                        offset = parent->offset - 1;
+                        parent = xa_parent_locked(xas->xa, parent);
+                } else if (prev) {
+                        if (prev->shift==0)
+                                return prev;
+                        offset = XA_CHUNK_MASK;
+                        parent = prev;
+                }
+        }
+        return NULL;
+}
+
+/*
+ * xas_node_find_next() - find next node in the parent.
+ * @xas: XArray operation state.
+ * @parent: parent node.
+ * @start: starting offset.
+ *
+ * This function call in the xas_alloc().
+ */
+static struct xa_node *xas_node_find_next(struct xa_state *xas,
+                struct xa_node *parent, int offset)
+{
+        void *entry;
+        struct xa_node *next;
+
+        while (parent) {
+                next = NULL;
+                while (offset < XA_CHUNK_SIZE) {
+                        entry = xa_entry(xas->xa, parent, offset);
+                        if (xa_is_node(entry)) {
+                                next = xa_to_node(entry);
+                                break;
+                        }
+                        offset++;
+                }
+                if (next) {
+                        if (next->shift==0)
+                                return next;
+                        offset = 0;
+                        parent = next;
+                } else {
+                        offset = parent->offset + 1;
+                        parent = xa_parent_locked(xas->xa, parent);
+                }
+        }
+        return NULL;
+}
+
+/*
+ * xas_node_delete_link() - link node pointer to previous and nexta.
+ * @xas: XArray operation state.
+ * @node: deleting node.
+ *
+ * This function call before xa_node_free().
+ * node->prev->next = node->nex
+ * node->next->prev = node->prev
+ */
+static void xas_node_delete_link(struct xa_state *xas, struct xa_node *node)
+{
+        struct xa_node *prev, *next;
+
+        if (node->shift == 0) {
+                prev = xa_prev_locked(xas->xa, node);
+                next = xa_next_locked(xas->xa, node);
+                if (!xas_not_node(prev))
+                        RCU_INIT_POINTER(prev->next, next);
+                if (!xas_not_node(next))
+                        RCU_INIT_POINTER(next->prev, prev);
+        }
+        node->prev = NULL;
+        node->next = NULL;
+}
+
 /*
  * xas_destroy() - Free any resources allocated during the XArray operation.
  * @xas: XArray operation state.
@@ -389,6 +489,29 @@ static void *xas_alloc(struct xa_state *xas,
unsigned int shift)
        RCU_INIT_POINTER(node->parent, xas->xa_node);
        node->array = xas->xa;

+        /*
+         * link node to previous and next after alloc
+         */
+         if (parent) {
+                struct xa_node *prev, *next;
+
+                prev = xas_node_find_prev(xas, parent, node->offset-1);
+                if (xas_not_node(prev)) {
+                        RCU_INIT_POINTER(parent->prev, node);
+                } else {
+                        RCU_INIT_POINTER(node->prev, prev);
+                        RCU_INIT_POINTER(prev->next, node);
+                }
+
+                next = xas_node_find_next(xas, parent, node->offset+1);
+                if (xas_not_node(next)) {
+                        RCU_INIT_POINTER(parent->next, node);
+                } else {
+                        RCU_INIT_POINTER(node->next, next);
+                        RCU_INIT_POINTER(next->prev, node);
+                }
+        }
+
        return node;
 }

@@ -459,7 +582,10 @@ static void xas_shrink(struct xa_state *xas)
                if (!xa_is_node(entry))
                        RCU_INIT_POINTER(node->slots[0], XA_RETRY_ENTRY);
                xas_update(xas, node);
+
+                xas_node_delete_link(xas, node);
                xa_node_free(node);
+
                if (!xa_is_node(entry))
                        break;
                node = xa_to_node(entry);
@@ -488,6 +614,8 @@ static void xas_delete_node(struct xa_state *xas)
                parent = xa_parent_locked(xas->xa, node);
                xas->xa_node = parent;
                xas->xa_offset = node->offset;
+
+                xas_node_delete_link(xas, node);
                xa_node_free(node);

                if (!parent) {
@@ -540,7 +668,10 @@ static void xas_free_nodes(struct xa_state *xas,
struct xa_node *top)
                        node->count = 0;
                        node->nr_values = 0;
                        xas_update(xas, node);
+
+                        xas_node_delete_link(xas, node);
                        xa_node_free(node);
+
                        if (node == top)
                                return;
                        node = parent;
@@ -607,6 +738,11 @@ static int xas_expand(struct xa_state *xas, void *head)
                if (xa_is_node(head)) {
                        xa_to_node(head)->offset = 0;
                        rcu_assign_pointer(xa_to_node(head)->parent, node);
+                        /*
+                         * link node to previous and next after expand.
+                         */
+                        rcu_assign_pointer(node->prev, xa_to_node(head));
+                        rcu_assign_pointer(node->next, xa_to_node(head));
                }
                head = xa_mk_node(node);
                rcu_assign_pointer(xa->xa_head, head);

===============================================================================

diff --git a/tools/testing/radix-tree/benchmark.c
b/tools/testing/radix-tree/benchmark.c
index 523c79f22ed3..3ed52942185c 100644
--- a/tools/testing/radix-tree/benchmark.c
+++ b/tools/testing/radix-tree/benchmark.c
@@ -148,3 +148,81 @@ void benchmark(void)
                for (s = 0; step[s]; s++)
                        benchmark_size(size[c], step[s]);
 }
+
+static long benchmark_xas_size(struct xarray *xa,
+        unsigned long size, unsigned long skip)
+{
+        unsigned long i, store=0, erase=0;
+
+        for (i = 0; i < size; i++) {
+               xa_store(xa, i, xa_mk_value(i & LONG_MAX), GFP_KERNEL);
+               store++;
+        }
+        for (i = 0; i < size; i++) {
+                if (!(i % skip)) continue;
+                xa_erase(xa, i);
+                erase++;
+        }
+        return store - erase;
+}
+
+void benchmark_xas_perf(void)
+{
+        static DEFINE_XARRAY(xarray);
+        static XA_STATE(xas, &xarray, 0);
+       void *entry;
+       unsigned long index, value;
+       unsigned long seen=0;
+
+       struct timespec start, finish;
+        long store, nsec1, nsec2;
+        const unsigned long size = 1 << 20;
+        const unsigned long skip = 7;
+
+        printv(1, "starting benchmark_xas_perf\n");
+
+        store = benchmark_xas_size(&xarray, size, skip);
+
+        clock_gettime(CLOCK_MONOTONIC, &start);
+        rcu_read_lock();
+        xas_for_each(&xas, entry, ULONG_MAX) {
+                value = xa_to_value(entry);
+                index = value % skip;
+                WARN_ON(index);
+               seen++;
+       }
+        rcu_read_unlock();
+        clock_gettime(CLOCK_MONOTONIC, &finish);
+        nsec1 = (finish.tv_sec - start.tv_sec) * NSEC_PER_SEC +
+              (finish.tv_nsec - start.tv_nsec);
+        printv(2, "store=%ld, seen=%lu, elapsed=%lu(ns)\n",
+                        store, seen, nsec1);
+        WARN_ON(store != seen);
+
+        xa_destroy(&xarray);
+        store = benchmark_xas_size(&xarray, size, skip);
+
+        seen = 0;
+        xas_set(&xas, 0);
+        clock_gettime(CLOCK_MONOTONIC, &start);
+        rcu_read_lock();
+        xas_for_each_next_fast(&xas, entry, ULONG_MAX) {
+                value = xa_to_value(entry);
+                index = value % skip;
+                WARN_ON(index);
+               seen++;
+        }
+        rcu_read_unlock();
+        clock_gettime(CLOCK_MONOTONIC, &finish);
+        nsec2 = (finish.tv_sec - start.tv_sec) * NSEC_PER_SEC +
+              (finish.tv_nsec - start.tv_nsec);
+        printv(2, "store=%ld, seen=%lu, elapsed=%lu(ns)\n",
+                        store, seen, nsec2);
+        WARN_ON(store != seen);
+
+        xa_destroy(&xarray);
+
+        printv(2, "perf=%f(%%)\n",
+                ((double)(nsec2-nsec1) / (double)(nsec2+nsec1)) * 100);
+}
+

===============================================================================

diff --git a/tools/testing/radix-tree/linux.c b/tools/testing/radix-tree/linux.c
index 44a0d1ad4408..4ba3be16aa7c 100644
--- a/tools/testing/radix-tree/linux.c
+++ b/tools/testing/radix-tree/linux.c
@@ -45,6 +45,8 @@ void *kmem_cache_alloc(struct kmem_cache *cachep, int flags)
                if (cachep->ctor)
                        cachep->ctor(node);
        }
+        node->prev = NULL;
+        node->next = NULL;

        uatomic_inc(&nr_allocated);
        if (kmalloc_verbose)
@@ -67,6 +69,8 @@ void kmem_cache_free(struct kmem_cache *cachep, void *objp)
                cachep->nr_objs++;
                node->parent = cachep->objs;
                cachep->objs = node;
+                node->prev = NULL;
+                node->next = NULL;
        }
        pthread_mutex_unlock(&cachep->lock);
 }

===============================================================================

diff --git a/tools/testing/radix-tree/main.c b/tools/testing/radix-tree/main.c
index 7a22d6e3732e..120d72fc6b8e 100644
--- a/tools/testing/radix-tree/main.c
+++ b/tools/testing/radix-tree/main.c
@@ -317,6 +317,7 @@ int main(int argc, char **argv)
        radix_tree_cpu_dead(0);

        benchmark();
+        benchmark_xas_perf();

        rcu_barrier();
        printv(2, "after rcu_barrier: %d allocated, preempt %d\n",

===============================================================================

diff --git a/tools/testing/radix-tree/test.h b/tools/testing/radix-tree/test.h
index 1ee4b2c0ad10..ce89f0c6b524 100644
--- a/tools/testing/radix-tree/test.h
+++ b/tools/testing/radix-tree/test.h
@@ -35,6 +35,7 @@ void tag_check(void);
 void multiorder_checks(void);
 void iteration_test(unsigned order, unsigned duration);
 void benchmark(void);
+void benchmark_xas_perf(void);
 void idr_checks(void);
 void ida_tests(void);

===============================================================================

Please check the above.
Best Regards,
JaeJoon Jung.

