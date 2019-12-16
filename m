Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0758412009F
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Dec 2019 10:14:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JJx1gb7dyIux/wvtlAjUM4Ul67VDqBxG4kjHz1T/apg=; b=kUoltI3c0zhYcv
	IMxpy6LqV9bCuUA6eEuGFcZ9khl8uCqemuXs5s667mhxHPrQCyhF7HNz3Th7KezpigbNFp5GrprTF
	GEE0a0yruSyu0moLN2Rv2Oxb4XKZki+CmbUZGEHbP+j+7/ZRzt0Vg/aM7Md61yhY4+eQWHF3w+cwT
	xyjUhXE2D/tADkHzz5li7Ta9/v6FIhFRXWpDn4M11ABtG+zsxiQ++9YSuZfZBm8/4blBMM1w6xnOV
	bJyaUg1qib87TrrEQcLJ0mXKX3+/iBs+WzqGJfof6hxWT48tVz42htlwlY8N3j41Ako3OxCrPDRhX
	Mv9J4rQFjv7FqDrL/aDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igmSU-0003s8-QE; Mon, 16 Dec 2019 09:14:30 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igmSG-0003eX-HO
 for linux-riscv@lists.infradead.org; Mon, 16 Dec 2019 09:14:17 +0000
Received: by mail-pf1-x444.google.com with SMTP id y14so5227098pfm.13
 for <linux-riscv@lists.infradead.org>; Mon, 16 Dec 2019 01:14:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JJx1gb7dyIux/wvtlAjUM4Ul67VDqBxG4kjHz1T/apg=;
 b=AEIfRIfuKJKYD+qvWQaSBXL7IDzElcWqewDLhnppNot8arXsdKKANjssizbJgnCmKV
 SDIbaGEkWHjZoNKopu6kC3hbpLdvJngOZY92hPXZGZTMuJhbwyr7DOFHpkYU/Bly6t0J
 MgJeIFQ1I4RJl9criTK7V/4yXUSG7Hu01jTMp0JstURGvI+v2tpJYQ902utvaQEEZReq
 umZ+iVILzopn2A5DzvLjf11+vEJvzZPxY3t1i6Ev1oLJzj44HXNhysK65vc3HI1SZSS/
 FZ6dh97VkM4iHm7mY34w1mQ0eOZzNFY+RbahdFWiY5ogJJeLCpxuc16JwcM8CNzn3EAM
 uG+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JJx1gb7dyIux/wvtlAjUM4Ul67VDqBxG4kjHz1T/apg=;
 b=KSehaXIAvzA3n+gy3HL9JKze8EXXH0M+sKEeDWHn22TamiffSVWZjOCO0JYEYpeiBE
 VpudnusUGGMFTB/Fre4PSEEvT8v4w6ynG2xk/mYF4TS5KV3e11LsVJQ7a5nFcCeGYVm4
 nn+KJsbtoqaFveD+cEp9+oZk2gO4kfXo7ECVu+sfVChulV3g/Cyxp3QgxsW4rxWlr+av
 LXp8VSPgb/tW24F6GYLo8JnOjz9wdzdWe4GT2DAOjrchiQyNo/XRQLQEgfsB2XfdW21L
 kPvL3kWDUpNh5FEvvo+YLhCLr7QnniwWHrwI2KRAXBdsyMQFtr9TpweQ7iUmAjM2MA2D
 Rg6Q==
X-Gm-Message-State: APjAAAXdZi2gORmFF6PvPvxgYryFYBDXT7KLXsQzwNNw4SXq2SIwqcKK
 bRBR5yeTAw+fQygOCVqKtNs=
X-Google-Smtp-Source: APXvYqxFeC9Wz/Ld4lIscKeMf0jMlKJu/7MJXqqy6/vQF89UWfwcx6tFmnqaY4nKmOGM+XOBrCNyHw==
X-Received: by 2002:a62:7b54:: with SMTP id w81mr14816500pfc.127.1576487655949; 
 Mon, 16 Dec 2019 01:14:15 -0800 (PST)
Received: from btopel-mobl.ger.intel.com (fmdmzpr04-ext.fm.intel.com.
 [192.55.55.39])
 by smtp.gmail.com with ESMTPSA id x21sm12505033pfn.164.2019.12.16.01.14.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 01:14:15 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: daniel@iogearbox.net,
	ast@kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH bpf-next v2 9/9] riscv,
 perf: add arch specific perf_arch_bpf_user_pt_regs
Date: Mon, 16 Dec 2019 10:13:43 +0100
Message-Id: <20191216091343.23260-10-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191216091343.23260-1-bjorn.topel@gmail.com>
References: <20191216091343.23260-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_011416_592151_0D588CF8 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bjorn.topel[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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


