Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE23B1C64BF
	for <lists+linux-riscv@lfdr.de>; Wed,  6 May 2020 02:03:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=HQ1Cigpl9A0g2ziQxfxPjRmKwSRMahcOzSHZQwuGlC0=; b=Mv8mcis3EH4EjV
	snITt4TjSzQE6TCTWr3eiz4aEQ+BS2r0fHMRyzneVRTO4v718fZYqXhbWj3xOyjbegJQyXFj9caBZ
	H3tr0ClhFWxfpTzcpnPd6gYnO0iLSCWJRFNrSVgjh5M1Kd4ol+VWc3x2d1DMW/Cp4C6MMSV0KU/GF
	3iyzTi2zqGwO9NLUtakWBRGwXfM3p+UopZOo6aE2X3mBuJ3r1nv6z48ORd8RFoTt0WALSR5hSj+dq
	dq0qCVbbeVsVdj7cwx4hDK87VeFwuw2RxTtzK1+nFJX3gmVy3JykmMd48xqhKDvF96JYDj/MSKO0G
	xp6sMluOjRdGIt9VYgBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW7X1-0007W2-3E; Wed, 06 May 2020 00:03:23 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW7Wx-0007VA-Vr
 for linux-riscv@lists.infradead.org; Wed, 06 May 2020 00:03:21 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ms17so10833pjb.0
 for <linux-riscv@lists.infradead.org>; Tue, 05 May 2020 17:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=HQ1Cigpl9A0g2ziQxfxPjRmKwSRMahcOzSHZQwuGlC0=;
 b=aS17fUgF3ZC88stcvJfNxTaoB+HmJk4Ad7IBO2Jbxa7DBT0xHZEzNR+EpuVvT3jKxK
 3fNensYy9VMPP35dxWjkIE/G2AWSvUAtAUsfaCik58Kco16YYkIrxNAod0sW9c1NWlMQ
 kk/wKARGgNRrs/6+2L/Z8zvcdz8+1FVqbBSLfa96M3eHXdnC5bEp/V7dtDLUNdZzB4cR
 PBueW4BvuQgv1sdcX0JxRpzCTiYT1/iUHyB6GwkHI460ETnHumVG+jRbClGLPgWzoBTF
 IO71jMIzDcIgS/qnohBGUlCZC0XTb7LG1Lys3TPvPrd07M9QSQqQcdtB6rk98Q6zybf6
 gL0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=HQ1Cigpl9A0g2ziQxfxPjRmKwSRMahcOzSHZQwuGlC0=;
 b=DAUyH2x34//kdGXYFCN5AUJ5X+pa03kgyRxXbfym4ZLVvr9vlRfv/h3FRkFYBq7Ias
 F4xUr5jUsd0GYIohuaTH0S2+ifq+jc/Sf/QeeikB4Sh9Wu+mCTofXrjrKduouQWVOo56
 yNEZ14LcYOONrhuuB5JzqNrWsubdnGE6peZ/1wK6PoM5jxuW+PioQtDrDVNackId5Ekf
 iLsrB1OLOYMhIWQfkp/EKkgQ8elSilk58w/qw+r7Y0H9Q3OlkCVg10J1P/YS3lM5JPCQ
 556Q9oA1G9uBXM3f5WY3kZL8eGfLUuxjY2RUuBciHLYCI/m2pRLERJ7ytCO8Az3VEl4I
 J3yw==
X-Gm-Message-State: AGi0PuYpmIvY+rhdPNUZmvwZHUn609Z1TqpVRFWHZMvkx71JzZwo+YrB
 vH37WTXjOeRJFZZIFDilnzFGPQ==
X-Google-Smtp-Source: APiQypKgpYaqDCemgOAG6HlmVBw70Z+EdVZDEw8elHZMNfKM8/xCEHqZc+sWdHTnljPuqGXuPzSDCA==
X-Received: by 2002:a17:90a:32ea:: with SMTP id
 l97mr6115115pjb.50.1588723398999; 
 Tue, 05 May 2020 17:03:18 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id r4sm220213pgi.6.2020.05.05.17.03.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 17:03:18 -0700 (PDT)
Date: Tue, 05 May 2020 17:03:18 -0700 (PDT)
X-Google-Original-Date: Tue, 05 May 2020 17:03:16 PDT (-0700)
Subject: Re: [PATCH] RISC-V: Remove unused code from STRICT_KERNEL_RWX
In-Reply-To: <CAOnJCUJtnVjYwfaHbiUdO4SqPk8rY0q0uYckNJpQpc7jK0Pz7g@mail.gmail.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: atishp@atishpatra.org
Message-ID: <mhng-3b48ef6b-d427-40af-b8f7-1bdccc117927@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_170320_025525_69FD33EE 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: aou@eecs.berkeley.edu, Anup Patel <Anup.Patel@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 zong.li@sifive.com, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 05 May 2020 17:00:05 PDT (-0700), atishp@atishpatra.org wrote:
> On Tue, May 5, 2020 at 4:55 PM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>>
>> On Sun, 03 May 2020 21:03:19 PDT (-0700), Atish Patra wrote:
>> > This patch removes the unused functions set_kernel_text_rw/ro.
>> > Currently, it is not being invoked from anywhere and no other architecture
>> > (except arm) uses this code. Even in ARM, these functions are not invoked
>> > from anywhere currently.
>> >
>> > Fixes: d27c3c90817e ("riscv: add STRICT_KERNEL_RWX support")
>> >
>> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
>> > ---
>> >  arch/riscv/mm/init.c | 16 ----------------
>> >  1 file changed, 16 deletions(-)
>> >
>> > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
>> > index b55be44ff9bd..ba60a581e9b6 100644
>> > --- a/arch/riscv/mm/init.c
>> > +++ b/arch/riscv/mm/init.c
>> > @@ -501,22 +501,6 @@ static inline void setup_vm_final(void)
>> >  #endif /* CONFIG_MMU */
>> >
>> >  #ifdef CONFIG_STRICT_KERNEL_RWX
>> > -void set_kernel_text_rw(void)
>> > -{
>> > -     unsigned long text_start = (unsigned long)_text;
>> > -     unsigned long text_end = (unsigned long)_etext;
>> > -
>> > -     set_memory_rw(text_start, (text_end - text_start) >> PAGE_SHIFT);
>> > -}
>> > -
>> > -void set_kernel_text_ro(void)
>> > -{
>> > -     unsigned long text_start = (unsigned long)_text;
>> > -     unsigned long text_end = (unsigned long)_etext;
>> > -
>> > -     set_memory_ro(text_start, (text_end - text_start) >> PAGE_SHIFT);
>> > -}
>> > -
>> >  void mark_rodata_ro(void)
>> >  {
>> >       unsigned long text_start = (unsigned long)_text;
>>
>> Thanks, this is on fixes.  Are you going to remove the ARM code as well?
>>
>
> Yeah and also I realized that I forgot to remove the declarations from
> the header file.
> My bad. I will send out a v2. Please drop this one and take v2.

I just fixed it up

commit 73cb8e2a5863ccc5215660f5123db621bd57dff7
gpg: Signature made Tue 05 May 2020 05:02:17 PM PDT
gpg:                using RSA key 2B3C3747446843B24A943A7A2E1319F35FBB1889
gpg:                issuer "palmer@dabbelt.com"
gpg: Good signature from "Palmer Dabbelt <palmer@dabbelt.com>" [ultimate]
gpg:                 aka "Palmer Dabbelt <palmerdabbelt@google.com>" [ultimate]
Author: Atish Patra <atish.patra@wdc.com>
Date:   Sun May 3 21:03:19 2020 -0700

    RISC-V: Remove unused code from STRICT_KERNEL_RWX
    
    This patch removes the unused functions set_kernel_text_rw/ro.
    Currently, it is not being invoked from anywhere and no other architecture
    (except arm) uses this code. Even in ARM, these functions are not invoked
    from anywhere currently.
    
    Fixes: d27c3c90817e ("riscv: add STRICT_KERNEL_RWX support")
    Signed-off-by: Atish Patra <atish.patra@wdc.com>
    Reviewed-by: Zong Li <zong.li@sifive.com>
    Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>

diff --git a/arch/riscv/include/asm/set_memory.h b/arch/riscv/include/asm/set_memory.h
index c38df4771c09..4c5bae7ca01c 100644
--- a/arch/riscv/include/asm/set_memory.h
+++ b/arch/riscv/include/asm/set_memory.h
@@ -22,14 +22,6 @@ static inline int set_memory_x(unsigned long addr, int numpages) { return 0; }
 static inline int set_memory_nx(unsigned long addr, int numpages) { return 0; }
 #endif
 
-#ifdef CONFIG_STRICT_KERNEL_RWX
-void set_kernel_text_ro(void);
-void set_kernel_text_rw(void);
-#else
-static inline void set_kernel_text_ro(void) { }
-static inline void set_kernel_text_rw(void) { }
-#endif
-
 int set_direct_map_invalid_noflush(struct page *page);
 int set_direct_map_default_noflush(struct page *page);
 
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 5b813532db59..27a334106708 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -502,22 +502,6 @@ static inline void setup_vm_final(void)
 #endif /* CONFIG_MMU */
 
 #ifdef CONFIG_STRICT_KERNEL_RWX
-void set_kernel_text_rw(void)
-{
-	unsigned long text_start = (unsigned long)_text;
-	unsigned long text_end = (unsigned long)_etext;
-
-	set_memory_rw(text_start, (text_end - text_start) >> PAGE_SHIFT);
-}
-
-void set_kernel_text_ro(void)
-{
-	unsigned long text_start = (unsigned long)_text;
-	unsigned long text_end = (unsigned long)_etext;
-
-	set_memory_ro(text_start, (text_end - text_start) >> PAGE_SHIFT);
-}
-
 void mark_rodata_ro(void)
 {
 	unsigned long text_start = (unsigned long)_text;


