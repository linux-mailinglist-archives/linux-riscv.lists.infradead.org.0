Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D413F190652
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Mar 2020 08:31:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=54p31XcZy9VY/uTSVV1VAo6tqKUeT0iaZ8T4Yx3sR7Y=; b=P9nePPC5lxgNTY
	qssfxOG1CX69iuq//Oi+xbLw6kc7FejrDLPwQaG03u41CQbXczfbKcEy/1a+YdSPV4+0nYnlKr6mS
	AoQB9Yj477RK6LGkngOgo+6iWINSKok5lj8IiI1seSM17sNl0FlG69Gz+gf2JO8cf+S3h+xQgeLTz
	i5tlCFHVOtYpIipVCCjLHwLgyrsLnaIEUyfgNIhZu+eSjp0WYeZ5nA1jDpD4H7nB6jTsZ5RZC4gCt
	ixl0qg+cAeFSlcMD+Dlt+y3UcsSrHVnb5/GxtbKMSGmecWeuVZA2ky+lXJJO+rVUp8OHhRa0PRK4D
	OOqTHaKSpxVUjwcxF65Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGe21-0004Fo-Jg; Tue, 24 Mar 2020 07:31:25 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGe1o-00040E-A9
 for linux-riscv@lists.infradead.org; Tue, 24 Mar 2020 07:31:13 +0000
Received: by mail-pj1-x1043.google.com with SMTP id l36so1091901pjb.3
 for <linux-riscv@lists.infradead.org>; Tue, 24 Mar 2020 00:31:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=54p31XcZy9VY/uTSVV1VAo6tqKUeT0iaZ8T4Yx3sR7Y=;
 b=iEXF+9cxq8xsvBHmABzfWbJjn41vgvA6oKrfEkKliYoY7j4OI83K0ywdq9cODsiA2Z
 v6OCCQIEj68L96a+WLVMjjt6ALm+CsD3j0D4KebwyuwLrDSgVo6P9mlbgoXk12+g8hYq
 h3HZjhPy1S8gcvtOkooUJKx59NBgXDGs9v2+7xxixk90ggSaHgyDTC4fWJPtMQM6OEfo
 1wP2sr8P3cQdvqRJvgyEiw6sOtpJrqjA4X1skfY4hFk5KMDcO1X3+K0WPyoE+Y3vNWP+
 0/At0OSgtSowO8eLWPmOYfifL5cMVVVHKwjfRwnTsOBdpeyiYvdATTYSilWaUKS0Ndx7
 0slw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=54p31XcZy9VY/uTSVV1VAo6tqKUeT0iaZ8T4Yx3sR7Y=;
 b=VOgq6uyxPUA6Hc8BlzB6txrbMHQJlOeapw1aR5ca/EFrcOflOLsOdBDEW1EWo2IYmm
 KCiXixrfaGe47Rv3OICOQNGIFm2J4W0NMx4fn5R0sHGeBZlg4n0IToWLIBwrfEBmKCSp
 JwRyBqV0GGMlzbDNSQOVWgIgYqUTV8JlZbldOdY3c5q28svRIw3LFxyiX3lNLUva5+7C
 jiA9bKmtpWNC8t0hZKXq2QvQyqYcgTM2xxATCuGiXyMpK0sNFH2l2Ep+IaE99GpaccYp
 gCQ8Jz3Pb7KWBM6Zdhin6SDgdY9ZW9RUMucmXquj6yLw1Lhia97qo9/XJFLrFQWdDjoA
 W7ZA==
X-Gm-Message-State: ANhLgQ0ESjh0we+M/LNJVdIJoxNdJ4bEiDVbw9lqwVA7zyyXxAtD9n2n
 H++onPHFcrw/ckSUjV+ggVEdOg==
X-Google-Smtp-Source: ADFU+vv2b4TrS7mtJtADgnbvhx9fw/lDSwAZQDta7SAXFjV1VN2AFgelMDsi76samQ/8v1L0pkUKOA==
X-Received: by 2002:a17:90a:cc14:: with SMTP id
 b20mr3916243pju.75.1585035071082; 
 Tue, 24 Mar 2020 00:31:11 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id i187sm15124648pfg.33.2020.03.24.00.31.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 00:31:10 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, alex@ghiti.fr,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH RFC 8/8] riscv/kaslr: dump out kernel offset information on
 panic
Date: Tue, 24 Mar 2020 15:30:53 +0800
Message-Id: <ea7c01b7c969ddc269a8f94cc9646fc48b7ff790.1584352425.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <cover.1584352425.git.zong.li@sifive.com>
References: <cover.1584352425.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_003112_393406_AA7572FD 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Dump out the kernel offset when panic to help debug kernel.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/kernel/setup.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
index 913d25e4b9fa..3ce50bf628ba 100644
--- a/arch/riscv/kernel/setup.c
+++ b/arch/riscv/kernel/setup.c
@@ -85,3 +85,26 @@ void __init setup_arch(char **cmdline_p)
 
 	riscv_fill_hwcap();
 }
+
+static int dump_kernel_offset(struct notifier_block *self, unsigned long v,
+			      void *p)
+{
+	pr_emerg("Kernel Offset: 0x%lx from 0x%lx\n",
+		 get_kaslr_offset(), PAGE_OFFSET);
+
+	return 0;
+}
+
+static struct notifier_block kernel_offset_notifier = {
+	.notifier_call = dump_kernel_offset
+};
+
+static int __init register_kernel_offset_dumper(void)
+{
+	if (IS_ENABLED(CONFIG_RANDOMIZE_BASE) && get_kaslr_offset() > 0)
+		atomic_notifier_chain_register(&panic_notifier_list,
+					       &kernel_offset_notifier);
+
+	return 0;
+}
+__initcall(register_kernel_offset_dumper);
-- 
2.25.1


