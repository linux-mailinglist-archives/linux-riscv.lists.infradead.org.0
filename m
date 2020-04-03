Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F7919DAA1
	for <lists+linux-riscv@lfdr.de>; Fri,  3 Apr 2020 17:53:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=ZfG/HEpqhA3MzgbPqFWg+BXYNFgu6A6b9QFElDn5ySA=; b=KPGGAL8nopWe8m
	I/HTqCD+4pSKY/vkvOo9m5YzJ2YeBcwaGsn8fKy8xilz5Y2cZhdtgbyAVKWs/ito2jP/M0MR7UvGq
	mqSvCjGjhR8gqHoDQqsuRY+RIyQDbkJauEm7cJ38j6aiz8TU15zUyVM477a4SuI4ItSibEy/mUUd/
	SF1ztrRy3QvVcjhdYA2c0lTECGTkDeOQVsgv0iR1cGZCMi3jQcLtjuvrAfYUYiI46rdJetHW5KlzK
	+/FaWnNhcFhcUOQtYf2NyiWlPRNZkELX68C+By3sTlxZgIj7Tjr3vkdd4bLImGDIS4DBpG1zwaC/7
	YioQNPXaUEduy89UuTmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKOdM-0006Vz-FM; Fri, 03 Apr 2020 15:53:28 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKOdG-0006PX-Or
 for linux-riscv@lists.infradead.org; Fri, 03 Apr 2020 15:53:24 +0000
Received: by mail-pl1-x643.google.com with SMTP id w3so2833525plz.5
 for <linux-riscv@lists.infradead.org>; Fri, 03 Apr 2020 08:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=ZfG/HEpqhA3MzgbPqFWg+BXYNFgu6A6b9QFElDn5ySA=;
 b=zmlVrOV4U6GylZVEDZ/ygdUdYk/Mge0hHPKwyECljiOx96v/ROmb1SHJBB9GtwAZBj
 l5Xfiy592UC8ZDWXqj+Yj0gcjKTZQydzV6W5PfmDobTD9gITspP4ttvdk/zC+YGfB7Vp
 h45ETzIoQLGJLJKF6PerEV9TNu++gUBsznslsO1RpZo418bVcE+3nYJ7q35fIEAIPm94
 x1SU6HEY43c42A3UATWv3mn271ShGdYzu8boGCsTSJiwZT3Kooj+PgvLKbCQn+nJT1PN
 MZlFKoszWaqz2pkrs36cKgUibijldDKQpTEm4Ong82kCK1fEeYODGi948KB4AY4UNar1
 mxCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=ZfG/HEpqhA3MzgbPqFWg+BXYNFgu6A6b9QFElDn5ySA=;
 b=lEwf2fOxoRFJKW/CmTItggAcdwZs+tz/Q6TnypmtBvM1/QjZiDb/Zrb7zkrqkrJfrc
 SCFfivYcsMGbX+DA/NlavId7qXAimcTiv0THRpD7q6s9vfTTcXPAKbh/I0VRb5MgZua+
 Uuak1Yv/oa1CbWq9DSNW6mgAPQWTYuUr+fqG7NyMCYZ9mKn18fwiHaBjiIJtIKsTMlmp
 ViVg4cbL+ic7DUf4sDw9RikeZfprIGbb+CI1xbXFCs4lB+xcJh/vWslrlH3zgDVjzvOT
 4MDwsSYXVpOB6H9MnEBGvK8xMRO5NUOske2Abkww7pIVGVMPU2vSiHa7WH3v+26+PNvM
 1yiQ==
X-Gm-Message-State: AGi0PuYJqHTtD8AnY80b7KA4MVQfGg19PtGA51Lg1dnoFck2x31AFpF8
 WqIoObqeEB3wt5wBgJKMESMoQY3+4RM=
X-Google-Smtp-Source: APiQypLIdx8+bzx7igbQi4YQ7pK0wEv8aLth3Xj8y5QXe5i6NJjZArjRddIE7SsYOpnndrd6uQmz/A==
X-Received: by 2002:a17:90b:254:: with SMTP id
 fz20mr10705848pjb.27.1585929201970; 
 Fri, 03 Apr 2020 08:53:21 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id s22sm5954001pfd.123.2020.04.03.08.53.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 08:53:21 -0700 (PDT)
Date: Fri, 03 Apr 2020 08:53:21 -0700 (PDT)
X-Google-Original-Date: Fri, 03 Apr 2020 08:53:04 PDT (-0700)
Subject: Re: [RFC PATCH 7/7] riscv: Explicit comment about user virtual
 address space size
In-Reply-To: <20200322110028.18279-8-alex@ghiti.fr>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: alex@ghiti.fr
Message-ID: <mhng-85bee1c4-d1ea-4370-8940-2e35c5eb6d4b@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_085322_824743_788ED2B9 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alex@ghiti.fr, anup@brainfault.org, linux-kernel@vger.kernel.org,
 zong.li@sifive.com, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 22 Mar 2020 04:00:28 PDT (-0700), alex@ghiti.fr wrote:
> Define precisely the size of the user accessible virtual space size
> for sv32/39/48 mmu types and explain why the whole virtual address
> space is split into 2 equal chunks between kernel and user space.
>
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> ---
>  arch/riscv/include/asm/pgtable.h | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>
> diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
> index 06361db3f486..be117a0b4ea1 100644
> --- a/arch/riscv/include/asm/pgtable.h
> +++ b/arch/riscv/include/asm/pgtable.h
> @@ -456,8 +456,15 @@ static inline int ptep_clear_flush_young(struct vm_area_struct *vma,
>  #define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
>
>  /*
> - * Task size is 0x4000000000 for RV64 or 0x9fc00000 for RV32.
> - * Note that PGDIR_SIZE must evenly divide TASK_SIZE.
> + * Task size is:
> + * -     0x9fc00000 (~2.5GB) for RV32.
> + * -   0x4000000000 ( 256GB) for RV64 using SV39 mmu
> + * - 0x800000000000 ( 128TB) for RV64 using SV48 mmu
> + *
> + * Note that PGDIR_SIZE must evenly divide TASK_SIZE since "RISC-V
> + * Instruction Set Manual Volume II: Privileged Architecture" states that
> + * "load and store effective addresses, which are 64bits, must have bits
> + * 63–48 all equal to bit 47, or else a page-fault exception will occur."
>   */
>  #ifdef CONFIG_64BIT
>  #define TASK_SIZE (PGDIR_SIZE * PTRS_PER_PGD / 2)

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

