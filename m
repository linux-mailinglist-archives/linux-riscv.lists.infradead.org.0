Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE81317E51E
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 17:56:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eOiyM2uGzUc6zhWPwWC3bZJGaa62phcZiPuWR1LO/LM=; b=l7I6M1crPZ7bni
	9pQRzX5NXl/5Pmpdep1+S6FXTmYHA4oVqb/7edmXwp39f60mW+TF3jPhCxnVYTp99JcCBrjOFONMy
	FS7fjP5fei008YBTzfqKo+ttKBY4CGokJ3Jd2G/qtzuDbRnrtyW2qcGW6r3rexOYVP4lSvYR2oxmc
	+T0XSv8zY32ieWAOx4qWhmDa19YfbQSdNPAObx75CgaZSCOrd5uvKTb1uxd0lobGgfke2KJSXuXlg
	qc2eJWf8H6UwemFJg1zyyT2AmFewadWk+UQVSSRKbT7xvyyLYkp3RFhTnm8ExLVSggpAbmEsY2b+u
	wgfXZlgBisDubXztJlhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLhG-0001yz-5T; Mon, 09 Mar 2020 16:56:06 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLhA-0001sX-06
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 16:56:01 +0000
Received: by mail-pj1-x1041.google.com with SMTP id f15so112327pjq.2
 for <linux-riscv@lists.infradead.org>; Mon, 09 Mar 2020 09:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eOiyM2uGzUc6zhWPwWC3bZJGaa62phcZiPuWR1LO/LM=;
 b=ns/e6viGugpe2sBeszGUW3QpCkeJB8MrYvhnEDHtLsFIns1NbWHZCL4O++HLMpG59o
 OZToMHr8HqtFaeMZgdNI84bo+KkGHLigFMo+d557Yf4W/0SCXPOxAR0fPP/oIGxXRiiD
 LHdnMeG+3aSl9JsQ/5GggSq9GjcobzY+pOknrKIhwPyWslWvDxaC68QjgxC6SxFtzJB7
 cQlkoW32VTwAAVI8vxofLhcOEi5csCrBNqTk7V67L+mxKL56djRSWtTmsyr3JvCLagfE
 XRZurknzTeTBKkXhpY8VNvKYhZoKPi61wa33hrG1ryx8icKuHvQHhb7RUYT0btO1mTUB
 fWiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eOiyM2uGzUc6zhWPwWC3bZJGaa62phcZiPuWR1LO/LM=;
 b=TNV5x2PIIr1Wty0B+nOmgzc9m1NnCX3dXBXWZHwDiXY4yCI+iwyjxaLj4EsNG4y0Yo
 MmslKIeOY1CWz/cWv6pRs0pjCmtDTg0hiAwM2CVkXg2IJqnvhqBHvOOENXLXkuJWgZst
 BTnXazN6qDXOLq/fFcPbAJPyt6FcbhsuzbaebfBALwsqxMuvTPx+DRW2xEBq7kBzyXVn
 IZaRu+czj2aGy6fscoFC9I8DkV3n13CksKOm9bqGi0qB3kIPCGxA2Rc3C3hfPK0oUBHW
 rS6X+5zYxlD0llG+1a+U/IRlDwj6CgI6mRGsCtzeRHvjBmIS04te5wC9eNDxQfXKJ1i5
 +aZg==
X-Gm-Message-State: ANhLgQ3OW18qGg5dM1V9FniGiw9Dnx8zyP25mgTlmiqIKa2BA3EXPnJ2
 Zf6cRudNiaParO9/4lOcAnc+Kw==
X-Google-Smtp-Source: ADFU+vuMwySfy4aW6l0eigB7My7EMmZrzIS9bpASt5EBC14RkPz9zUaM1SfXngLklZVJnawwvD3fJQ==
X-Received: by 2002:a17:902:aa98:: with SMTP id
 d24mr16957575plr.106.1583772958869; 
 Mon, 09 Mar 2020 09:55:58 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id cm2sm104013pjb.23.2020.03.09.09.55.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 09:55:58 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 4/9] riscv: move exception table immediately after RO_DATA
Date: Tue, 10 Mar 2020 00:55:39 +0800
Message-Id: <5c80357b06faf1caed8fbab2d4dc57a2cbeb8b94.1583772574.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1583772574.git.zong.li@sifive.com>
References: <cover.1583772574.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_095600_045417_F97D689E 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Move EXCEPTION_TABLE immediately after RO_DATA. Make it easy to set the
attribution of the sections which should be read-only at a time.
Add _data to specify the start of data section with write permission.
This patch is prepared for STRICT_KERNEL_RWX support.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/kernel/vmlinux.lds.S | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
index 1e0193ded420..02e948b620af 100644
--- a/arch/riscv/kernel/vmlinux.lds.S
+++ b/arch/riscv/kernel/vmlinux.lds.S
@@ -58,6 +58,10 @@ SECTIONS
 		*(.srodata*)
 	}
 
+	EXCEPTION_TABLE(0x10)
+
+	_data = .;
+
 	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
 	.sdata : {
 		__global_pointer$ = . + 0x800;
@@ -69,8 +73,6 @@ SECTIONS
 
 	BSS_SECTION(PAGE_SIZE, PAGE_SIZE, 0)
 
-	EXCEPTION_TABLE(0x10)
-
 	.rel.dyn : {
 		*(.rel.dyn*)
 	}
-- 
2.25.1


