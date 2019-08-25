Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B863C9C3EC
	for <lists+linux-riscv@lfdr.de>; Sun, 25 Aug 2019 15:26:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DziBjlzQDt2iI5QBh9n3b9wv2AEItg7IvPfrAdU6DsA=; b=okx/gBuzahxjOZ
	okuQ0hJjm1Bo1DP9PNYU/kC+QM/bRQJLVCJOzLQVSvckROkx+DpGU+u2SUszg6BooP6EGL7zLAS9E
	kpK/k015G9B/dZ2o87WkCN0W/w5mTHM3z5bnrgzrkFJXLudNdrVvs3EITs+2PHCk3WzSsuLfIQG1o
	YR/eGNV8LLnGgA3jhNmY6n2T6tnbbz70lJ/Rcq2oX7boKYLwtu0rEyZJXr8/oymPjxnjhTSgo6O67
	EhNDxAHzPl9FcSSZ4E3yuOUSPbYfY0/Ftj4StGjTrE9DXkqA06T2WOzbSWwm494oW0ArXtH5pDFSU
	HqJqXNjYmuZqm+l9g/wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1sXb-0006Kb-3K; Sun, 25 Aug 2019 13:26:43 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1sVP-0003HL-Cp; Sun, 25 Aug 2019 13:24:28 +0000
Received: by mail-pf1-x441.google.com with SMTP id y200so2148698pfb.6;
 Sun, 25 Aug 2019 06:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AnjEbtcd5cNHwbypnsrs4cfSdZGE8Y8KXODnC5r+/Sw=;
 b=BBTUSTiFPulSXGVxfV98A1F0dTvb1nWs3kkM5cP9rBvuoglTt4LTj8MiMfMFJBcrsS
 MTkeTo7kfOO+E0w+tKCTnNl3c/QHQ2SSNUY9y0LVFtXPL9z4rM2CVMgGoJ5gO8pDVZ3K
 vpOFcvPN2hFCmHJbZGQeZy5BK6pHjBE8Plt63H0GmNLx4Vm2E5hg9Nh/n+QOK3km2hVD
 H13h6219G0X/DDyWj/h1KQ89LK+SNeEolCXmqpXmn50tXDlsOST1VLkuz+6fbZZ/VRDy
 KA2SYRSEYEHy+/fzoZr+9A/pwqozm+eDevLCy6f29pL0zilHLKXlEXyE9eRy40DxvdGs
 yOaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AnjEbtcd5cNHwbypnsrs4cfSdZGE8Y8KXODnC5r+/Sw=;
 b=tEEagTXQoQeg6qi9YtdZZEKYmougpSlRA2+haFZjOCUBHCuplhycx3o1kGRVXl7Ahx
 c/ey0QaAa9A9FxRSG7aHIKoBnE3jF0bV8yiOiBr3PZDmKzXRpr2Uxrx0oYCDgJ6ZFkU/
 qKuiePIQHjEXz9fkE+Mbkfm/vQS5S6s6uRH7LdbrYV5Yh7Wo3OVT20HO7Kxwp+uS2IsL
 6RjFsE+2x9Iybe/v6XAhLNd7YyVA+ss1s0DIWEWm87qvOe7SoAB9tTWClHbM19k+kgnJ
 mHQQfGqOEv0/MKpcd5djF3z1BhHh7hoyfHw0yJSCmuhCZuPOlG2bKujgNvBTlnoYxfbF
 sVZw==
X-Gm-Message-State: APjAAAU2KHd7R1/UFI8XZlFfHt5m6PxUp6UwKoY9+FJ/sHcVniskffZ8
 enMIttFigP7Y2LwF3JmRpJo=
X-Google-Smtp-Source: APXvYqw6YJNQG1mv4TcaAIQFGH9uTD6ol5DJ8JkmCimZzRNBFxq3HdokK6aYuJxRfnvwrECLT3Lxsw==
X-Received: by 2002:a63:5b52:: with SMTP id l18mr12098178pgm.21.1566739466886; 
 Sun, 25 Aug 2019 06:24:26 -0700 (PDT)
Received: from localhost.localdomain ([149.28.153.17])
 by smtp.gmail.com with ESMTPSA id y23sm11076562pfr.86.2019.08.25.06.24.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 25 Aug 2019 06:24:26 -0700 (PDT)
From: Changbin Du <changbin.du@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>,
	Ingo Molnar <mingo@redhat.com>
Subject: [PATCH 05/11] ftrace: create memcache for hash entries
Date: Sun, 25 Aug 2019 21:23:24 +0800
Message-Id: <20190825132330.5015-6-changbin.du@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190825132330.5015-1-changbin.du@gmail.com>
References: <20190825132330.5015-1-changbin.du@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_062427_546544_AE39478E 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (changbin.du[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-parisc@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-s390@vger.kernel.org, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 Jessica Yu <jeyu@kernel.org>, sparclinux@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Changbin Du <changbin.du@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

When CONFIG_FTRACE_FUNC_PROTOTYPE is enabled, thousands of
ftrace_func_entry instances are created. So create a dedicated
memcache to enhance performance.

Signed-off-by: Changbin Du <changbin.du@gmail.com>
---
 kernel/trace/ftrace.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/kernel/trace/ftrace.c b/kernel/trace/ftrace.c
index a314f0768b2c..cfcb8dad93ea 100644
--- a/kernel/trace/ftrace.c
+++ b/kernel/trace/ftrace.c
@@ -94,6 +94,8 @@ struct ftrace_ops *function_trace_op __read_mostly = &ftrace_list_end;
 /* What to set function_trace_op to */
 static struct ftrace_ops *set_function_trace_op;
 
+struct kmem_cache *hash_entry_cache;
+
 static bool ftrace_pids_enabled(struct ftrace_ops *ops)
 {
 	struct trace_array *tr;
@@ -1169,7 +1171,7 @@ static int add_hash_entry(struct ftrace_hash *hash, unsigned long ip,
 {
 	struct ftrace_func_entry *entry;
 
-	entry = kmalloc(sizeof(*entry), GFP_KERNEL);
+	entry = kmem_cache_alloc(hash_entry_cache, GFP_KERNEL);
 	if (!entry)
 		return -ENOMEM;
 
@@ -6153,6 +6155,15 @@ void __init ftrace_init(void)
 	if (ret)
 		goto failed;
 
+	hash_entry_cache = kmem_cache_create("ftrace-hash",
+					     sizeof(struct ftrace_func_entry),
+					     sizeof(struct ftrace_func_entry),
+					     0, NULL);
+	if (!hash_entry_cache) {
+		pr_err("failed to create ftrace hash entry cache\n");
+		goto failed;
+	}
+
 	count = __stop_mcount_loc - __start_mcount_loc;
 	if (!count) {
 		pr_info("ftrace: No functions to be traced?\n");
@@ -6172,6 +6183,10 @@ void __init ftrace_init(void)
 
 	return;
  failed:
+	if (hash_entry_cache) {
+		kmem_cache_destroy(hash_entry_cache);
+		hash_entry_cache = NULL;
+	}
 	ftrace_disabled = 1;
 }
 
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
