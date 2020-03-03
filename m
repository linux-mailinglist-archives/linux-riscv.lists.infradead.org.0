Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 747FA177281
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 10:34:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZvzoObnBVzlXL6MM7KZpnEWysdUu+lTn+skS3IgavUM=; b=GV6ayPw1sLJpfM
	Km5kCylMVl4fEXzwbsj4R7may1xb4j1nFTaiHJRp9MTRZ1qIIY+FDR5jvUsj3oS4w0rxOpJPubCpc
	vbnzbXP1ozVLgIZP7l7QeBAVb9iNh1FeuIodzgOx8DDm3upaSAo0R60MoO7jjUvt7c/zHWDurFL5Y
	H0VslfeQxFQWT4qU4prHLE7jSdL9qaxxPCUdJwbQQ+OZ/GD/5a2vZwsEFj3QmL0g4pUXuN/Gx4bWq
	oTiukT5A2pPqsZrRAuhW4SpNKnd3ZSkvj7ubKFj3Dv2HwsNDEXcr7IFfhAvWf3anroG97rGWKU7Dp
	5iiSNELgTapaIEZYBfVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j93wl-0003Hf-68; Tue, 03 Mar 2020 09:34:39 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j93wh-0003Gk-7H
 for linux-riscv@lists.infradead.org; Tue, 03 Mar 2020 09:34:36 +0000
Received: by mail-pj1-x1043.google.com with SMTP id dw13so1094591pjb.4
 for <linux-riscv@lists.infradead.org>; Tue, 03 Mar 2020 01:34:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZvzoObnBVzlXL6MM7KZpnEWysdUu+lTn+skS3IgavUM=;
 b=fpjHsJmnfVmUfPGfvrMJIa6ugplGKPICLu4RJXOHo7RaSJTcXOU6xdvU/x1V9fDRST
 BJLsJpki/oC/f9dRHAMFZA1xF6eP0xXFokNg4O757ciUtd0hYZ8+7NIy+yJ+FLifOqUU
 eCCJlsMz12M376owQxkzYeJqfKI8RhXnu0HqmwLoxZD2g/GTBqK5W9/+mOFZC+rwuAVm
 mGhtNDIOu4GbdAzVB0pFGppcf8X2uPNu3otLH7wcodCYJAdZdc19t/aS4szxPfzW34Gr
 CVi0ft0UB/9+hTiN+o1VrOOTPt0MjJQ2FiZ1/k7xRMDkZv/6V0iZG9a6ScYlSKmm3idf
 UjnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZvzoObnBVzlXL6MM7KZpnEWysdUu+lTn+skS3IgavUM=;
 b=I098NqyzbkssR5yeHTrMbn8JrsqwrtCujNBdOKwRBJJpDUjcOYy19I5KQqQK9crcy+
 JOIyYgpKtIL/FdGZPOr0b/kK+O8I7axxw27baissbn+PwvzcbmkGt7d0KZ1Aad+9+GIb
 cG+544+vZXae7V47MfVpL5pAlKISmMHA6pY0lqMAX9PIlZK1hyoabByg9GOw4ttynGdh
 F33BpRtswNbSmG/etJKuvZ1XjU35meb9j+aHLBLqJeVhYKOvgX9XI2GCIk3gokFLQbNr
 r3NYuR+5IqOIj8Qras74WMGoM0eDvunAIbZcC8amP48vqYBI92T4TsDLMbCiASnt87Wn
 RTYg==
X-Gm-Message-State: ANhLgQ3MKOETH0kBBu/FD/CQOe5xLrKwT99drLhzDhLH7SEqG9g2cE3j
 8BwU+p0g4tygSzvKKlNVNzJbEQ==
X-Google-Smtp-Source: ADFU+vuHS1eBdaLNvluWEEmf97yC/t9L3b5bxpdp0cpSTw/h3n9o9CnJqe7dhb9ZXXuC4PkHvw9ArQ==
X-Received: by 2002:a17:902:8f91:: with SMTP id
 z17mr3422269plo.234.1583228073577; 
 Tue, 03 Mar 2020 01:34:33 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id s5sm1494745pfh.47.2020.03.03.01.34.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 01:34:33 -0800 (PST)
From: Greentime Hu <greentime.hu@sifive.com>
To: green.hu@gmail.com, greentime@kernel.org, paul.walmsley@sifive.com,
 palmer@dabbelt.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] riscv: fix the IPI missing issue in nommu mode
Date: Tue,  3 Mar 2020 17:34:18 +0800
Message-Id: <20200303093418.9180-2-greentime.hu@sifive.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200303093418.9180-1-greentime.hu@sifive.com>
References: <20200303093418.9180-1-greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_013435_273357_655C8294 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Greentime Hu <greentime.hu@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch fixes the IPI(inner processor interrupt) missing issue. It
failed because it used hartid_mask to iterate for_each_cpu(), however the
cpu_mask and hartid_mask may not be always the same. It will never send the
IPI to hartid 4 because it will be skipped in for_each_cpu loop in my case.

We can reproduce this case in Qemu sifive_u machine by this command.
qemu-system-riscv64 -nographic -smp 5 -m 1G -M sifive_u -kernel \
arch/riscv/boot/loader

It will hang in csd_lock_wait(csd) because the csd_unlock(csd) is not
called. It is not called because hartid 4 doesn't receive the IPI to
release this lock. The caller hart doesn't send the IPI to hartid 4 is
because of hartid 4 is skipped in for_each_cpu(). It will be skipped is
because "(cpu) < nr_cpu_ids" is not true. The hartid is 4 and nr_cpu_ids
is 4. Therefore it should use cpumask in for_each_cpu() instead of
hartid_mask.

        /* Send a message to all CPUs in the map */
        arch_send_call_function_ipi_mask(cfd->cpumask_ipi);

        if (wait) {
                for_each_cpu(cpu, cfd->cpumask) {
                        call_single_data_t *csd;
			csd = per_cpu_ptr(cfd->csd, cpu);
                        csd_lock_wait(csd);
                }
        }

        for ((cpu) = -1;                                \
                (cpu) = cpumask_next((cpu), (mask)),    \
                (cpu) < nr_cpu_ids;)

It could boot to login console after this patch applied.

Fixes: b2d36b5668f6 ("riscv: provide native clint access for M-mode")
Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
---
 arch/riscv/include/asm/clint.h | 8 ++++----
 arch/riscv/kernel/smp.c        | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/include/asm/clint.h b/arch/riscv/include/asm/clint.h
index 6eaa2eedd694..a279b17a6aad 100644
--- a/arch/riscv/include/asm/clint.h
+++ b/arch/riscv/include/asm/clint.h
@@ -15,12 +15,12 @@ static inline void clint_send_ipi_single(unsigned long hartid)
 	writel(1, clint_ipi_base + hartid);
 }
 
-static inline void clint_send_ipi_mask(const struct cpumask *hartid_mask)
+static inline void clint_send_ipi_mask(const struct cpumask *mask)
 {
-	int hartid;
+	int cpu;
 
-	for_each_cpu(hartid, hartid_mask)
-		clint_send_ipi_single(hartid);
+	for_each_cpu(cpu, mask)
+		clint_send_ipi_single(cpuid_to_hartid_map(cpu));
 }
 
 static inline void clint_clear_ipi(unsigned long hartid)
diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index eb878abcaaf8..e0a6293093f1 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -96,7 +96,7 @@ static void send_ipi_mask(const struct cpumask *mask, enum ipi_message_type op)
 	if (IS_ENABLED(CONFIG_RISCV_SBI))
 		sbi_send_ipi(cpumask_bits(&hartid_mask));
 	else
-		clint_send_ipi_mask(&hartid_mask);
+		clint_send_ipi_mask(mask);
 }
 
 static void send_ipi_single(int cpu, enum ipi_message_type op)
-- 
2.25.1


