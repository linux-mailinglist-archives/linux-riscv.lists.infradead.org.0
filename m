Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C661E1BB9
	for <lists+linux-riscv@lfdr.de>; Tue, 26 May 2020 09:03:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gvp2INvx+B9ss8TpUTp5IqU5aDse0eaPMYxEsTSV+gk=; b=Ohz/qGEizt1dgG
	99bldLgvcxQa5pi1/7X0Li4VqDZOh0lBPKqB6a0I3/gL2KMfRYFpdvkfLICCibrZDHHtkn0onnExA
	880YFvcFqwEJ9S452M/guPID0ekGJlDS6Zhrv5F4QWk9pezZ4/BUgUhBKIrVEOlscCgPGlB2Lr/Ol
	wlBDNKcMO52wHn8d+1ceCqQyLnOnK99GR4Zi/KeUyUIJqxENuoUJPt7bre6oaEc8MZCx5jvKpA4bQ
	BV7g4NwB3+eR3O1ya8qvraT9dL75OYxpf1N/ErbUizrmGUIbZBRYvhS7YeAh76zWw7jVnWCY7MCye
	lD3x4grqBGSPtb/fqtyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdTcB-0007Ue-GZ; Tue, 26 May 2020 07:03:07 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdTc3-0007LB-27
 for linux-riscv@lists.infradead.org; Tue, 26 May 2020 07:03:00 +0000
Received: by mail-pg1-x541.google.com with SMTP id m1so3320205pgk.1
 for <linux-riscv@lists.infradead.org>; Tue, 26 May 2020 00:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gvp2INvx+B9ss8TpUTp5IqU5aDse0eaPMYxEsTSV+gk=;
 b=Wk2qKfa30EWw+z9TkYF6hLLr/si2a5wR2YMqoap59kX9XvLPewWzOjzI5wn4Bi/Nnv
 fk3LGDOEzmXPFk4nQsjIkhYjzJ2Q5Oe/lXELWSYEIPhtVhjaJTLjOVqSgtP+qtdBAyBQ
 Q5BAGzV8Mtx/Qd5rc6oa2i7xd4biugKXhVN2wpOUVInELgw8WdQyoxcy9LO8NJoN+szY
 nlo90zNTthvChmUfjK8HZX4LpN7nRYRDr8IiVwWGHU+ljZMPWabfKbhrJSXSIfni+zS3
 dhEM5dympOAcs6lVpQoTvGjwfrkBkp+EWVdKbPM0kg4T3Mqcq3fht+jD7T824iDW4gPU
 2eYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gvp2INvx+B9ss8TpUTp5IqU5aDse0eaPMYxEsTSV+gk=;
 b=RCBCmxZ2FRhBT4DvEgLQZV4VQjkOfRdBLAR65VP9nWN8VipbyOSKWZ0BJ+gQw4uY+d
 ONieQNRUpYCZz7/jx+sk484gSme5CpP7pQjVM28oTtzo2ARxItUeO9WQfwoNOCOGgo6/
 R5f8G17dc0uLQq4iMNJ3hIjmvsEv1SHDS+CCtbI8Lwc7yeZZ+zoVW6/zPKIYHEGty7Fk
 uLPjvafexs9rjQO3S9/2yf336T6qGx+dWHoTSp9T48w0Wvhcg4lQXZlF0Ol+50gmdMrN
 NYBlb2ftkTFpviUXbCCJidU44IoeY8b3FJzbaM2NpF76uNAypBmfmbFnOyNdzm4WsPdc
 YUUA==
X-Gm-Message-State: AOAM533Cbt2yj3uxKzw5sQhXEcrOsNIcLH25bDPFnvpeettiTdcicBb1
 39ibmgStxNp68+kIRVDkA8bF2g==
X-Google-Smtp-Source: ABdhPJxsFmvhNXhCO0KIlX/3Vpid91Ou7337I9p9atlNuHf+zW0JTlqnmoPDaxPAabSqMdGx/dh6KA==
X-Received: by 2002:a63:1a42:: with SMTP id a2mr925889pgm.269.1590476578281;
 Tue, 26 May 2020 00:02:58 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id q34sm15167431pja.22.2020.05.26.00.02.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 00:02:57 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, guoren@linux.alibaba.com, vincent.chen@sifive.com,
 paul.walmsley@sifive.com, palmerdabbelt@google.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 oleg@redhat.com
Subject: [RFC PATCH v4 04/13] riscv: Extending cpufeature.c to detect
 V-extension
Date: Tue, 26 May 2020 15:02:33 +0800
Message-Id: <eff3bcd51d9125f1d01150e9ea634668695f1b76.1590474856.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590474856.git.greentime.hu@sifive.com>
References: <cover.1590474856.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_000259_097654_D7F1C551 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
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
Cc: Anup Patel <anup@brainfault.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Guo Ren <guoren@linux.alibaba.com>

From: Guo Ren <ren_guo@c-sky.com>

Current cpufeature.c doesn't support detecting V-extension, because
"rv64" also contain a 'v' letter and we need to skip it.

Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/include/uapi/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpufeature.c      | 4 +++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/uapi/asm/hwcap.h b/arch/riscv/include/uapi/asm/hwcap.h
index dee98ee28318..a913e9a38819 100644
--- a/arch/riscv/include/uapi/asm/hwcap.h
+++ b/arch/riscv/include/uapi/asm/hwcap.h
@@ -21,5 +21,6 @@
 #define COMPAT_HWCAP_ISA_F	(1 << ('F' - 'A'))
 #define COMPAT_HWCAP_ISA_D	(1 << ('D' - 'A'))
 #define COMPAT_HWCAP_ISA_C	(1 << ('C' - 'A'))
+#define COMPAT_HWCAP_ISA_V	(1 << ('V' - 'A'))
 
 #endif /* _UAPI_ASM_RISCV_HWCAP_H */
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index a5ad00043104..c8527d770c98 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -30,6 +30,7 @@ void riscv_fill_hwcap(void)
 	isa2hwcap['f'] = isa2hwcap['F'] = COMPAT_HWCAP_ISA_F;
 	isa2hwcap['d'] = isa2hwcap['D'] = COMPAT_HWCAP_ISA_D;
 	isa2hwcap['c'] = isa2hwcap['C'] = COMPAT_HWCAP_ISA_C;
+	isa2hwcap['v'] = isa2hwcap['V'] = COMPAT_HWCAP_ISA_V;
 
 	elf_hwcap = 0;
 
@@ -44,7 +45,8 @@ void riscv_fill_hwcap(void)
 			continue;
 		}
 
-		for (i = 0; i < strlen(isa); ++i)
+		/* Skip rv64/rv32 to support v/V:vector */
+		for (i = 4; i < strlen(isa); ++i)
 			this_hwcap |= isa2hwcap[(unsigned char)(isa[i])];
 
 		/*
-- 
2.26.2


