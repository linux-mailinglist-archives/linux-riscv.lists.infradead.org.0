Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2BE1172DB
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 18:32:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JJx1gb7dyIux/wvtlAjUM4Ul67VDqBxG4kjHz1T/apg=; b=bFyJrnzawGwPbW
	lmy8lSSk7lbtHtqidIqEeaqF3SVJsnqepZwYGsZj5GKp+m789hd/KC0W2lPcjpqrknpO7pi0DGRAE
	ZeeltCAvzdXKLbVC1OVo3gt/DB4EXO1OGYiL7YWf/Qc59W7GauVVmolrSfXvw76l1oKTV7kal+Lrd
	PWBPhOPlVXpCnGQlmxN+DOkghhFSp3y2i8Tra/RbVixfezpnz1nlRRsJwzdq8RqciT0WPNX2jxpgs
	43EkW9g7yYf12qLvoeqCmr4GY7SCwmFsAzHRrF3UZxPOCwOUu9mYGWdW4OVpaFaftliEjeaQXcFpk
	dNxbfjQA490LYNbFxUag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieMtP-0004ey-73; Mon, 09 Dec 2019 17:32:19 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieMtG-0004WZ-PN
 for linux-riscv@lists.infradead.org; Mon, 09 Dec 2019 17:32:12 +0000
Received: by mail-pj1-x1043.google.com with SMTP id o11so6180344pjp.9
 for <linux-riscv@lists.infradead.org>; Mon, 09 Dec 2019 09:32:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JJx1gb7dyIux/wvtlAjUM4Ul67VDqBxG4kjHz1T/apg=;
 b=uS7kguZbewotiewe3eNEHiAYQ1NBG4BmutBfowVjnF3VSkL7gmTKFZI1qF19mjsr7U
 5Ymr+omBiK4cAUBfSnV7+LszdqA+5WKxmsJQPsh1nWll88ySD6QpGmUEVspEOECCoazn
 ksCs2t465xw2OIIjFykCvuSH2f/l6AHW15B/bMSIXzYmku7qq5PQJxVBwFHHqEEEIJf2
 lcBEpY62ERPEUolysJgD7ieIuyWWFH6st04PLD881a9iHhTgiq1ezMCQy+k7i9Kccdxs
 Xy0jnm0HdR+Ci0bYEumQQ43R2A8zgVWjnPvVyqCmlkjf9AE0SgiTdy2UDK2cx9hPyCgq
 qhnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JJx1gb7dyIux/wvtlAjUM4Ul67VDqBxG4kjHz1T/apg=;
 b=kbdyHsDmYmETwSEO90/8xnGHkg1Kvz5enwJz+kq1tNblOhlparYqwE7w5TipWHEVcw
 ZoRLS2QIHyzoYMT9aAKKEJ4nxU05fheOqvQqPFWIZ2joh/nW5eSkpqHtcRshBvZg8izK
 iEu9vmvmsmLwW9ryfvyupjTkcbusgz4T0beyuLJGsm9lPFLev9R0vMZeXTrODG2e48Rc
 vNB76osD9teVSpxSB6tvV1st28/YRVT+pHP2sOqIhyQrGpkjpmE2oHoyTJm7X/zwW7cS
 36ImITyQBHi22uqAt7A5lgQo9DHBLDHu/O4MiKqSh7mjmb9DmlDwTuy/F986I9GuKXt+
 4PEA==
X-Gm-Message-State: APjAAAUjYHz/yoLDpma12QufMn27LPNr8z4JXZ0s3iLh7c75zs4OlDZM
 zjjQDnc1jp959sv8VQ0Y0QA=
X-Google-Smtp-Source: APXvYqy8i85CXpsfyv8dckCdsUg7eLteOhLSNdZVYk516MDZYXdwuPo9V61Bsf6Mk2ZN6V00qpmncQ==
X-Received: by 2002:a17:90a:ac0e:: with SMTP id
 o14mr156393pjq.11.1575912729718; 
 Mon, 09 Dec 2019 09:32:09 -0800 (PST)
Received: from btopel-mobl.ger.intel.com ([192.55.55.41])
 by smtp.gmail.com with ESMTPSA id d23sm54943pfo.176.2019.12.09.09.32.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 09:32:09 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: daniel@iogearbox.net,
	ast@kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH bpf-next 8/8] riscv,
 perf: add arch specific perf_arch_bpf_user_pt_regs
Date: Mon,  9 Dec 2019 18:31:36 +0100
Message-Id: <20191209173136.29615-9-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191209173136.29615-1-bjorn.topel@gmail.com>
References: <20191209173136.29615-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_093210_840139_AEF80920 
X-CRM114-Status: UNSURE (   6.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bjorn.topel[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>,
 linux-riscv@lists.infradead.org, bpf@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

RISC-V was missing a proper perf_arch_bpf_user_pt_regs macro for
CONFIG_PERF_EVENT builds.

Signed-off-by: Björn Töpel <bjorn.topel@gmail.com>
---
 arch/riscv/include/asm/perf_event.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/riscv/include/asm/perf_event.h b/arch/riscv/include/asm/perf_event.h
index aefbfaa6a781..0234048b12bc 100644
--- a/arch/riscv/include/asm/perf_event.h
+++ b/arch/riscv/include/asm/perf_event.h
@@ -82,4 +82,8 @@ struct riscv_pmu {
 	int		irq;
 };
 
+#ifdef CONFIG_PERF_EVENTS
+#define perf_arch_bpf_user_pt_regs(regs) (struct user_regs_struct *)regs
+#endif
+
 #endif /* _ASM_RISCV_PERF_EVENT_H */
-- 
2.20.1


