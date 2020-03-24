Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5967190646
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Mar 2020 08:31:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rI7k74kFCx75JJFZ6P5OAIxYXRc1E3R4Ch5Nvkd/PLg=; b=cPdlICkIrx8j/p
	7UKKzAmwPk/PNbq41r8iDQ5uq3Dy6oSCxVahwJjIDuatLMF0zPkrxcmhx9vauTt2W0eqZaRC5DTy3
	xjbN9CwgTODnD0zyVjLFDKcF/mkIB9eQJ4oR3MJtc6OkoanCg8EX6ngl+8j7PkL65DimNFWBU9vF7
	ln7ZdzBSM+WUh7juI+KV6lO9nKr8gYKr5Zi0Em3rw8a0OZ1H6rwa77SS+0L418HtR3MzuCyraltpP
	Imna4+7rAcdo98WaVPO1o6tXEH9WkmVJYqzRHE4srSbTsNKySnOQP+kR8zuw1YOxQS8mrQEFEkWse
	tYR+ijGjQ1UrgftpJT7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGe1f-0003ni-AI; Tue, 24 Mar 2020 07:31:03 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGe1b-0003lL-Lx
 for linux-riscv@lists.infradead.org; Tue, 24 Mar 2020 07:31:00 +0000
Received: by mail-pl1-x642.google.com with SMTP id v23so3012093ply.10
 for <linux-riscv@lists.infradead.org>; Tue, 24 Mar 2020 00:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rI7k74kFCx75JJFZ6P5OAIxYXRc1E3R4Ch5Nvkd/PLg=;
 b=dEevPmr87gMs/zwZYhDr7kBAchZIIxA4j5XE/SWfIF4tf1bkYVtCjmF3HsMceLOm/f
 yMUMX1CJJOm8dr2xxEoJWUbfGXvxESvk3D0nxnwpGXEjuBCmUsgS16u0WGb8owp6HQw4
 IEug9xf/t27S0CWLebeXEEqDTvoaWjbkL720nZutV1M8l8cdL588L5zelE+ZOKxiTCS+
 vbMGHNscXpKxbnk87V5VOYQz2ImoBQUmms6OABHlwE0fY7e3BGB4yTliJXWw0s0KJMwR
 34bOJFpvs9St2+5ZOCOEN7S9LcoDAIhATu3a1S1NGHc8lMXQbEUh2u2WKje+RTRJjySE
 088Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rI7k74kFCx75JJFZ6P5OAIxYXRc1E3R4Ch5Nvkd/PLg=;
 b=pS3R2KYroXt0B33wqcBoupwFCOAXEhtfsrCeN9+sYR+tQdqVQz2DOqCLX/KiwuWs12
 9WbpGsv54wmQd272ZljyZb48zoRd2pqP5mP4O+YpHsq9+DG6VGREjq7KjG4o8Ax8yESP
 2+q9IWP9xSNgPURXxZfwA3iNw6P98cbWAZF09mGPyabM4GTbaOUZNbUbvvn7G67OXfhw
 v3Jm3J6lbKEDMUwvdrKW4tyIu456QJLddRHNnMDgUmKAZhncxI6C3XlAdWZ/3RrsIpJP
 ajGmQRxeI/cn6HQFvyUXmqG4VcrqT99G7ykmJJdCnHN25jCG37K23rhZxyG5b4XqRyWc
 99jA==
X-Gm-Message-State: ANhLgQ2PJDwzhk/8WZ3vwLa3W8J5pXmaU08MRp7DP6wR4qFyCaSrfwEb
 lJFeQeaJtAzz7vN8tbS22buToA==
X-Google-Smtp-Source: ADFU+vslTkhtG9uiit3rXTJkBTjyUlQnzV2opL3cYdGTfGD2f0Xo7eaCNuOpvpfefHtqiXeUtLDX/Q==
X-Received: by 2002:a17:90a:3606:: with SMTP id
 s6mr3821002pjb.195.1585035058819; 
 Tue, 24 Mar 2020 00:30:58 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id i187sm15124648pfg.33.2020.03.24.00.30.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 00:30:58 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, alex@ghiti.fr,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH RFC 1/8] riscv/kaslr: add interface to get kaslr offset
Date: Tue, 24 Mar 2020 15:30:46 +0800
Message-Id: <cf8585177e6798095b1af02f28dad5a3271a761e.1584352425.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <cover.1584352425.git.zong.li@sifive.com>
References: <cover.1584352425.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_003059_714086_E905E8E1 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

Add interface to get the random offset.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/include/asm/page.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/riscv/include/asm/page.h b/arch/riscv/include/asm/page.h
index 92848e172a40..e2c2020f0a8d 100644
--- a/arch/riscv/include/asm/page.h
+++ b/arch/riscv/include/asm/page.h
@@ -101,6 +101,11 @@ extern unsigned long kernel_virt_addr;
 extern unsigned long max_low_pfn;
 extern unsigned long min_low_pfn;
 
+static inline unsigned long get_kaslr_offset(void)
+{
+	return kernel_virt_addr - PAGE_OFFSET;
+}
+
 #define __pa_to_va_nodebug(x)	((void *)((unsigned long) (x) + va_pa_offset))
 #define __va_to_pa_nodebug(x)	((unsigned long)(x) - va_pa_offset)
 
-- 
2.25.1


