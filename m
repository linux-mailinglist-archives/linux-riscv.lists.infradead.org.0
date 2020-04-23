Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B161B5FC0
	for <lists+linux-riscv@lfdr.de>; Thu, 23 Apr 2020 17:43:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Kg7M4xD9jeOCc5gp5xCZax2oVOZa7KcCbIv0zMuiHGw=; b=b52/Cz2X2nzm1n
	hQmxgF4RGBjENdnLKYJKnHnhaNRDf+Y5M8V5Ar3lnWtTum32Nw2OscA+oNxj+yj/uwKg9YSLi3YpW
	5ypGV1w9LaQAhOdHy/8Qiso75yI6yg24KGIucE2A6Ib5F8uFCpC2okEahPMgCgUPd3oypLbwrHHBA
	F5hPuE/wtxAtF9rrxlc09WtbxdVOsBwT98shAt8o+bSqo6Xj/2ipBL2mg25GWmWSX7XxjmCmibBTx
	ns19pzcgDNOCUpm1zdeVsn5LxVhBP7m8akwa73IWqYV2+mtnic1fqY/TBgF3NFdqqEJyO7Vo4xGqy
	gdiOM72v/XWeKZMaFI0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRe0w-0000eg-Gr; Thu, 23 Apr 2020 15:43:46 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRe0T-0000Gp-O7
 for linux-riscv@lists.infradead.org; Thu, 23 Apr 2020 15:43:19 +0000
Received: by mail-pf1-x442.google.com with SMTP id d184so3141523pfd.4
 for <linux-riscv@lists.infradead.org>; Thu, 23 Apr 2020 08:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=Kg7M4xD9jeOCc5gp5xCZax2oVOZa7KcCbIv0zMuiHGw=;
 b=jdxNZdqnkgxjmMccyXVc0yzWYhqTW73wR2FVcl/1mojOY4JsmcywIotiTcLKHeMHPY
 M/h7nfQ6Lt5H96VNs0x9u5d9XRzMG+92RQk8x+Yh9Zeu232zSPh9aCzXnohs+gOBWrtf
 N9QgGJ4qwwY7UT1uKCfUMSFWTIOOR9XOFTGESa2ZRUjoAaByvITQ6Vdgx0AxU4mXmy6u
 aOAGqMEQIcNlLhF7zHYbybWBFdK7MgJ1hDujYGWm64+QhHL8cEUQJTFdbp9RYMIpE02L
 OS2/hOcJs5y0mFcnv/kB1JozMVPx2p2JKvHa228VsX4F+uj+rwayzCgggu/VLt+oBbst
 6LXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=Kg7M4xD9jeOCc5gp5xCZax2oVOZa7KcCbIv0zMuiHGw=;
 b=B2nGi8OALhoG6gHWiWvgsD8hoYvEDOE6qSPwJEWhyIu+YShgWlk45fuZp0dW1puHrb
 6jXmwE17vKahX5x9CsMcbTRRCZUNpBKiWz6HgPrTr8h1nRnHpkTBKvZTKd0CQP33D7iQ
 bq0I/5Zt0HaVhPiQ0RPQ7Dgoh0jQlNcgbH7/0S2w/ZdjElMFfsN7kUWpVzI3e7PN/U6G
 VI6F9jKkpl5VR/m+yXgJwxbsiv+1g0HLyR5E+fgABEMJAC/ksDL9PCmpqlJQtdqiUGSi
 Hz6VTjQhzsUesLsOKoWjePc1G3LaT9peo8zHNGRk+U9/ajIYBMsA2vhnwet7cY0a+ARF
 8lmg==
X-Gm-Message-State: AGi0PuYfigQBW21nkLTBkR3nVr5qGeX9HqO181qe0LRDYmbQFOqbife9
 pnBFgXgE7Aj6aHq+TkHkccIGyA==
X-Google-Smtp-Source: APiQypL0rdmDv1u1pIBnXgRbU4zfRGn7m8WubBpK6fMP8z32Ebbh6TMUsEYXss99PdGrrqmfyNIXXw==
X-Received: by 2002:a62:1bd0:: with SMTP id b199mr4264913pfb.283.1587656596222; 
 Thu, 23 Apr 2020 08:43:16 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id t11sm2913054pfl.122.2020.04.23.08.43.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 08:43:14 -0700 (PDT)
Date: Thu, 23 Apr 2020 08:43:14 -0700 (PDT)
X-Google-Original-Date: Thu, 23 Apr 2020 08:38:24 PDT (-0700)
Subject: Re: [PATCH 1/3] riscv: sbi: Correct sbi_shutdown() and
 sbi_clear_ipi() export
In-Reply-To: <20200417121222.156422-1-wangkefeng.wang@huawei.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: wangkefeng.wang@huawei.com
Message-ID: <mhng-25c7c97b-dc82-462d-b6ef-b67a32d57f76@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_084317_911280_531A2C0F 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: wangkefeng.wang@huawei.com, aou@eecs.berkeley.edu,
 linux-kernel@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 17 Apr 2020 05:12:20 PDT (-0700), wangkefeng.wang@huawei.com wrote:
> Fix incorrect EXPORT_SYMBOL().
>
> Fixes: efca13989250 ("RISC-V: Introduce a new config for SBI v0.1")
> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
> ---
>  arch/riscv/kernel/sbi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
> index 7c24da59bccf..62b10a16c8d7 100644
> --- a/arch/riscv/kernel/sbi.c
> +++ b/arch/riscv/kernel/sbi.c
> @@ -102,7 +102,7 @@ void sbi_shutdown(void)
>  {
>  	sbi_ecall(SBI_EXT_0_1_SHUTDOWN, 0, 0, 0, 0, 0, 0, 0);
>  }
> -EXPORT_SYMBOL(sbi_set_timer);
> +EXPORT_SYMBOL(sbi_shutdown);
>
>  /**
>   * sbi_clear_ipi() - Clear any pending IPIs for the calling hart.
> @@ -113,7 +113,7 @@ void sbi_clear_ipi(void)
>  {
>  	sbi_ecall(SBI_EXT_0_1_CLEAR_IPI, 0, 0, 0, 0, 0, 0, 0);
>  }
> -EXPORT_SYMBOL(sbi_shutdown);
> +EXPORT_SYMBOL(sbi_clear_ipi);
>
>  /**
>   * sbi_set_timer_v01() - Program the timer for next timer event.

Thanks.  I've put all three of these on fixes.

