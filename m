Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2FE1E57B5
	for <lists+linux-riscv@lfdr.de>; Thu, 28 May 2020 08:41:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gvp2INvx+B9ss8TpUTp5IqU5aDse0eaPMYxEsTSV+gk=; b=FKRLIKqtf1uP+v
	f2CbfKaRW0rdFokMWxsbW1GomejAiXSvrstVQH5iccnIgiEo0xUEP9eJHyC4SQPoqqMpbY5F0BKKW
	yTnyuPPH+UxrIzsuX5Qe5zwXaH03wR5gCgVX2QBxMhyKNvLYGOTypSt3Rw5pD+i+QMwHjF/v5SpUg
	dSGDEqEsHUiSdPAgs+i7RZ55s3MErYIktOC44jD5dIcu8ZEPdmQXje+qkSypJwr0DZYU1zArIS2Iw
	DsDzZLb3iWYQnc9MEv42g694BXxODnr5eBzDpW7Ju0JLzIqc0D9RmN6OCAZhQdKFnPkKKckfGprQm
	sRXR+WV7ZxlXxxuU9TKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeCEH-00036O-PC; Thu, 28 May 2020 06:41:25 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCE8-00030S-Q6
 for linux-riscv@lists.infradead.org; Thu, 28 May 2020 06:41:18 +0000
Received: by mail-pg1-x544.google.com with SMTP id d10so12955809pgn.4
 for <linux-riscv@lists.infradead.org>; Wed, 27 May 2020 23:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gvp2INvx+B9ss8TpUTp5IqU5aDse0eaPMYxEsTSV+gk=;
 b=ZMjx8+9k1qlKADWoYFMr1t2to6kbxg7plETGIOt3xM45sBIHxWuegyLkn4B7CpKpnG
 VJIkjRmBNAb896IRqlZ4eibnkzID+q3nu7XThatd8qGEZSKMcjYiJb4F5cnGLQv/n3G6
 5k97qBEAh+1o9FN7KP74qpU3VlxCFIFMX0fn89pFCNSldqS1Yq0s+LEYJlas+NKE95Ez
 nQFN7K1bmnStT3VKkK8fnnf95wyF3rmHegDn7a1J9sSM9buzRVt7rldtEfdz4hhiIkzI
 r/7tTNfaugYr9dtVc9buZh90zWu0Mg23fulWV2oVfkvBQXF6EqppfSK5oLDj8sOUVd+z
 Ozxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gvp2INvx+B9ss8TpUTp5IqU5aDse0eaPMYxEsTSV+gk=;
 b=LXX/TyIVnf1fm69WrBADcyEcoTwNnUkoUk4P11EZTDjmTzgSzeFLmYCVEJ54qMI2s+
 mlttosB7CjavvoATSjxn2Q5B4wJtA7SK04diCGPwEBROybuS3li25qVEsgYHEwzmUo28
 qKsEGuy13o84SwgVLSOOMfldjCtOrmNvDxJL/T76M3Nx3nwQdWdX7oFYSVobQ0DyLtDO
 y6LJ/gI7UyKrejk2Qtghugi0doJ69KlFScZr65nb9kS0ALTHznXuB0bGHzIaywQm7Lc+
 f8EVJoRBerdG/GQbFo03EljONBVfdO68d1FZ7XzKvIDthjmRabrIm/uOt9HZs6Bb11ji
 K9aw==
X-Gm-Message-State: AOAM531Uun7qRTi2x08R3glpi1PjLU3mc3WX5Bu+BOU5iqtZdHaJLWy4
 kz2nUY9hmh2F0qcB4OT+DdaugA==
X-Google-Smtp-Source: ABdhPJxrQtY0V5qN9YCUcZBCzMhw0xLetgJwr2kAdy3xYpSMNC6eHCcgX5en7iP8ooEjnC0FvbOTew==
X-Received: by 2002:aa7:8ec6:: with SMTP id b6mr1588810pfr.272.1590648075534; 
 Wed, 27 May 2020 23:41:15 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id q29sm3773366pfg.79.2020.05.27.23.41.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 23:41:14 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, guoren@linux.alibaba.com, vincent.chen@sifive.com,
 paul.walmsley@sifive.com, palmerdabbelt@google.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 oleg@redhat.com
Subject: [RFC PATCH v5 04/13] riscv: Extending cpufeature.c to detect
 V-extension
Date: Thu, 28 May 2020 14:40:52 +0800
Message-Id: <4b2a5ec77dd0eee02818abb036518930fed8b105.1590646208.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590646208.git.greentime.hu@sifive.com>
References: <cover.1590646208.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_234116_855265_2EE8DC68 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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


