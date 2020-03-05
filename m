Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0026A17B058
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 22:15:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=9+1EhWPpss4QhNZrOlX7kurqpoCphQTt/H2TjuPYl1Q=; b=bsB42bAcEgufqf
	ubp/ATnELzH7lAZLlLcz/oxTWoAgGcw4z0+0CZt6hWo64nFpLzSIiCAfSoXRvlYm3aBpNSJ82cdGA
	fn7WkcyoJYksY2j/MzXSx+zi65Wig43vK/IemHeU4XYjjqdqcmsGDOFT9wCeuOdnHpEWM2D8c+LNZ
	MmkU38T+Obm1CYDEIpMCAtwwwWlm5PWHGa9DH4K++l5R7e3gWSxrdknvAoYYqV9+Wuwu7CWYa6uqc
	Uospwagdxr+rdugd0GTJKgdxRHTuZUlljeHbOdQhxkdFQ6h7FNcR/+9khqvMxFNcXGDtTQi+5985/
	6SB4QEXBcpYce5cv/WXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9xqK-0000ix-OT; Thu, 05 Mar 2020 21:15:44 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9xqH-0000iS-1o
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 21:15:43 +0000
Received: by mail-pg1-x543.google.com with SMTP id n24so10468pgk.11
 for <linux-riscv@lists.infradead.org>; Thu, 05 Mar 2020 13:15:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=9+1EhWPpss4QhNZrOlX7kurqpoCphQTt/H2TjuPYl1Q=;
 b=ULgqtRG/k56Nm9/C+oQS1iM+7iougmuOf6uGVDm8ZKNfCMzHQlgvfah02EoKzwxfZx
 RqnZqhrww3Wb90uOhyw3TlUOgkDEFh51Qrqn1Zf0bobDidGXMWwvmjiWeC+njkQJOf7N
 w3wcqQ6mFFpQo0ZGB+6TVzKIzUoE9EbdWNAhoby1aFj/wCLyYxl/Gzbp9+W6bZdMJGJX
 mUGz1RqHvD+4eKfCAeGLCWM4iSa1A+xHawoR1E6heG0FipTKWerUfeTCQmLIYQ4xMDtZ
 HYne9SBwz7D+ZXLeWk8VPb5XjTq5t+J0zFza7lvEvBno5kLtj8PwYVrkyXukD3Puj5Aq
 MeJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=9+1EhWPpss4QhNZrOlX7kurqpoCphQTt/H2TjuPYl1Q=;
 b=KLzwcTQ3LGZ4VlR9W+i7XdPu6KaZqcYImYKeQxRYDB8qdXy0JrTajGOQTW85rmvGQM
 2K4oW5CAx8PXs+I4fqlDvA9m44PphgbX0wJTFt/YQsU6+fE9N7iEIMMdtf1bk0T4w12W
 H4fhUVK77qDXpvVl3fE7eJWvBIQ9pqGBN8NP2OguqoPR6HJZn7uHI+5oijmHYoS+yFOr
 bDgQuJpkKzcHUTMGTguCUWm8Ov2YfvgqbPMYAZi1qG/Nccj/SjW0X5ZkXEdeL7t26bjQ
 DjgxzO5VuubsiYCyZI5B5z019JSlcuUYO0Pj7RuQsWMG/j0lCUIkH5YCpWz2T73lFARC
 KcFA==
X-Gm-Message-State: ANhLgQ2hPszdeL+KGekjFVLGKaTosbK/CN1GLfyi3+PcJCtj+ta4ZV8k
 ojOg7k9a7gRsqdtQI78RoRBk+Q==
X-Google-Smtp-Source: ADFU+vsbZynI+R8e3jLSyig5XUAieRLdXVzdDbgFtNnMb7/UmNXkF1SMhG1Unke/mdJNVMUjK9dDpw==
X-Received: by 2002:a62:7784:: with SMTP id s126mr298249pfc.23.1583442939943; 
 Thu, 05 Mar 2020 13:15:39 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id 188sm29333161pfa.62.2020.03.05.13.15.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 13:15:39 -0800 (PST)
Date: Thu, 05 Mar 2020 13:15:39 -0800 (PST)
X-Google-Original-Date: Thu, 05 Mar 2020 13:10:06 PST (-0800)
Subject: Re: [PATCH] riscv: Use p*d_leaf macros to define p*d_huge
In-Reply-To: <20200220061023.958-1-alex@ghiti.fr>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: alex@ghiti.fr
Message-ID: <mhng-e9025d02-f23d-486a-bbbf-083fe0932619@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_131541_315377_BB5D971B 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 alex@ghiti.fr, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 19 Feb 2020 22:10:23 PST (-0800), alex@ghiti.fr wrote:
> The newly introduced p*d_leaf macros allow to check if an entry of the
> page table map to a physical page instead of the next level. To avoid
> duplication of code, use those macros to determine if a page table entry
> points to a hugepage.
>
> Suggested-by: Paul Walmsley <paul.walmsley@sifive.com>
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> ---
>  arch/riscv/mm/hugetlbpage.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/arch/riscv/mm/hugetlbpage.c b/arch/riscv/mm/hugetlbpage.c
> index 0d4747e9d5b5..a6189ed36c5f 100644
> --- a/arch/riscv/mm/hugetlbpage.c
> +++ b/arch/riscv/mm/hugetlbpage.c
> @@ -4,14 +4,12 @@
>
>  int pud_huge(pud_t pud)
>  {
> -	return pud_present(pud) &&
> -		(pud_val(pud) & (_PAGE_READ | _PAGE_WRITE | _PAGE_EXEC));
> +	return pud_leaf(pud);
>  }
>
>  int pmd_huge(pmd_t pmd)
>  {
> -	return pmd_present(pmd) &&
> -		(pmd_val(pmd) & (_PAGE_READ | _PAGE_WRITE | _PAGE_EXEC));
> +	return pmd_leaf(pmd);
>  }
>
>  static __init int setup_hugepagesz(char *opt)

Thanks, this is on for-next.

