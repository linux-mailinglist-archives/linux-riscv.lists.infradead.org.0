Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E33391C64A8
	for <lists+linux-riscv@lfdr.de>; Wed,  6 May 2020 01:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=ATXIubCTTXOBHXzWhZxzF+Sp5JyKqEJFksQsf+OAlCg=; b=Jk5VIa0vdEN2QE
	QpoBdq0gBXIht4YhFchD9KVVXCPXZB3jsexS0vmf74PvCmjaOP3khVIz/iNYoNqpfse9DbClsB6YU
	p3/GfCHmLmY8cSENkRqFhwiZi50gZI/PebjJrmgB8HklAiVZbLI/JSyzrK7E6ynlp8J/h1NJ9SgLH
	AcxbCE2XnNiLg9vR9iUxjzsb7wJu0tULNlQXhLDVLm6NEw7VsdyOiaRxrgGF04dgrpcYv+Q5/XPDR
	4j8odegMTkDQSt3slnXOwfiA7sr+JTZmX3pyDr/cNw7VSm1Oy0wTBuJha7MZmgFTcUg69iLOgLsmF
	GSxSmeqg7cjDhHWIIByQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW7PR-0003AO-3X; Tue, 05 May 2020 23:55:33 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW7PO-00039y-A7
 for linux-riscv@lists.infradead.org; Tue, 05 May 2020 23:55:31 +0000
Received: by mail-pg1-x544.google.com with SMTP id q124so1761656pgq.13
 for <linux-riscv@lists.infradead.org>; Tue, 05 May 2020 16:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=ATXIubCTTXOBHXzWhZxzF+Sp5JyKqEJFksQsf+OAlCg=;
 b=LCUE+epOqJoR+Js3sGpG0U90X1zeIkkRcKpuwrTZTpRFnEKXfY5giOa0TSthpXBEVN
 3p2yoVisoWm3Ql4CELeMvCLVV3zFKJO5Zb9KkLTcb9IlPfE0SpCg6hnmaBGuUwxNDzwc
 85PgVaVDmb+KyOApTbH3RaSVKUhOF1ck8rMvupcZ8dQZqrseOXOd25uPak5H8kNy2zj3
 RQgFpOiMOcRgjwhPkTdVUD3qYni7JIFID0WxVWai7Lln1CV+bLzop2GC4P2wYxixDO6X
 FOou9ZBfpbxk8eXB0dj2oGB7ME+R8/4aiGr2NpmYjKbNEIhRM7O7tB6vm7MIt32nvEOD
 1hKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=ATXIubCTTXOBHXzWhZxzF+Sp5JyKqEJFksQsf+OAlCg=;
 b=ACticrlun8QoF5RYk4siBYFjqMHstpaNY8T00VwtXoK5BKZcrBMKw9Hu2CN5Uhtp5b
 AoAwtjuncnhnrPvOb8mFb9erp3Ns4CMCtGRGqvbwOLwuCaOACS8F4jvzBPvDSUAEqrsA
 Gy4AB3YVJ5EsZWE0t3DTydkpp9ZA1svkxi1TuyxhV0MpnkVH4nWerYKOnkp/VhC2Uwlw
 KLtrQfHZurQwMz+se+P5NlnVlkBddqmqr9M71Afoi7SJS/Nb6agvwsm0DwOHUa31OBX6
 qlY4HobJs0q9G5lXCMfqJckXAHGBULZj+SB/bpqPXXgjtpAYFGm7DbsYLdYf/7/lE/uv
 JtkA==
X-Gm-Message-State: AGi0PuaWnquT6ZbAc3vxnM+9tLS6307dYrwzW9iLhgdIO6yx1EgwTmi1
 uPFRZnTrJYoH6PgSx3t7W9F0Hg==
X-Google-Smtp-Source: APiQypJQ7iVowzFYXtx5BFr6e1gDDwQs19amgIfj5WG5z8x8u0u5C7Ec+ncx0Sl9ZJzKU6sM6IdFMQ==
X-Received: by 2002:a65:4107:: with SMTP id w7mr4619921pgp.438.1588722929163; 
 Tue, 05 May 2020 16:55:29 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id 188sm122789pfg.218.2020.05.05.16.55.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 16:55:28 -0700 (PDT)
Date: Tue, 05 May 2020 16:55:28 -0700 (PDT)
X-Google-Original-Date: Tue, 05 May 2020 16:42:29 PDT (-0700)
Subject: Re: [PATCH] RISC-V: Remove unused code from STRICT_KERNEL_RWX
In-Reply-To: <20200504040319.31423-1-atish.patra@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-a3f16502-c8cd-46db-afa1-86df18b3778d@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_165530_349948_4861448C 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

On Sun, 03 May 2020 21:03:19 PDT (-0700), Atish Patra wrote:
> This patch removes the unused functions set_kernel_text_rw/ro.
> Currently, it is not being invoked from anywhere and no other architecture
> (except arm) uses this code. Even in ARM, these functions are not invoked
> from anywhere currently.
>
> Fixes: d27c3c90817e ("riscv: add STRICT_KERNEL_RWX support")
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/mm/init.c | 16 ----------------
>  1 file changed, 16 deletions(-)
>
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index b55be44ff9bd..ba60a581e9b6 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -501,22 +501,6 @@ static inline void setup_vm_final(void)
>  #endif /* CONFIG_MMU */
>
>  #ifdef CONFIG_STRICT_KERNEL_RWX
> -void set_kernel_text_rw(void)
> -{
> -	unsigned long text_start = (unsigned long)_text;
> -	unsigned long text_end = (unsigned long)_etext;
> -
> -	set_memory_rw(text_start, (text_end - text_start) >> PAGE_SHIFT);
> -}
> -
> -void set_kernel_text_ro(void)
> -{
> -	unsigned long text_start = (unsigned long)_text;
> -	unsigned long text_end = (unsigned long)_etext;
> -
> -	set_memory_ro(text_start, (text_end - text_start) >> PAGE_SHIFT);
> -}
> -
>  void mark_rodata_ro(void)
>  {
>  	unsigned long text_start = (unsigned long)_text;

Thanks, this is on fixes.  Are you going to remove the ARM code as well?

