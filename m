Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4912622DA3
	for <lists+linux-riscv@lfdr.de>; Mon, 20 May 2019 10:04:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/0bz/8pn95oucMbZgJ7Rltg3yb19SmRtywXnY3Re0Yc=; b=G4qouSwZpYeWQN
	CcDNtZa6qOj46wCGDoCjMyppvx6VCpSFfOIdm7snUWiHWetxS6+AGHQUUZPnvW7pT/h4Rf0L72mPa
	chtyIohjX7dyIAOnw8Iwm4Nn0NpAvB5P/AOM44rsbLLcxunk2cMXBXTVow1aWLLBjlh8THGyN02pb
	nvD1+QT5voRV/izwK0QFjEOsKObwi6bWVYheoShAYY+Xdq00rOAWAiDh/rGgvk13/eoxzSOOV35a/
	JhijYgSEZROhs/igg4g8LqWGcU7IBx1XjoFRwV4lif578rboh+yEEr/asaPwFn0FhX7ucw/6bkzD4
	82Fh1b7NT0nK+5SBXrXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdHf-0008IQ-MJ; Mon, 20 May 2019 08:04:35 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdHW-00088T-Il
 for linux-riscv@lists.infradead.org; Mon, 20 May 2019 08:04:28 +0000
Received: by mail-wm1-x342.google.com with SMTP id 15so7902094wmg.5
 for <linux-riscv@lists.infradead.org>; Mon, 20 May 2019 01:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CmVxPKr/p8w3G+M3DHVkRMpeLb5sdrTPWmMcfzlk/eA=;
 b=zI4sZypDilwYv9c2/D5IRWMgroa2AFGDMA3+s4acLXcok7/Iwmcg8oP7oUyBRAMZoj
 DFwBStkLjWHydE1zv8ahbJ3AiSjy3oIrGkvhEJ37ADKPWNT/fcTmo43fwPti82bJTdsN
 WGrDJQCxbhCMv4KSAzzEE7rTEZ6+xckWU13HWh0xhbkkByQsQIK7OCZq6oSsvMoQOZQL
 sYnDEPjJ9oEdXPgJGZv9teuyBQUgAFeR9ibAfiCn4W6oaJ6hlOOm1X5VKDecSCwUXuML
 zUsuBIiYodXFBVNMOiKCXcd0EllDokQ04YAB6gBasKUrW5PonPS1quxbveULKSCVRvUT
 AFjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CmVxPKr/p8w3G+M3DHVkRMpeLb5sdrTPWmMcfzlk/eA=;
 b=I3mZfltsge/6vJkM7+jY+e8XGpfalNJ5CDIIrvdMxejQYYNOtjIJ2WZnPI0cCNBqkN
 JhG3UWPA6RMfh2pcTAn8x5YDUN+4MYXYu0wU4lMSJ73P31RZIlJn5G7A9VQzqkpq0YU/
 XIfH+kuKwTJjR72A/HJQ04v1IpxI+mzakgM0cYek52Mtjs7PP7wVv5LMC5uiwlQx/oGI
 nUmAG1dtvZylmAhKbgKcsY2iAOBBT2aIE6swLtWmhfNdsBXN/2BkPmn9NpJJTthNn4DI
 HHCvi0W1hon2/wSqMDl5OkMY6TgJkxfMuiod3vf8p1NqhiLtaruUi7ZGElncoGEOWTP/
 64KA==
X-Gm-Message-State: APjAAAXPBBsARr4tJsClKL7gid3Prn4Ru58SfzBtwHH5zUDrVOT8MdcS
 h4M910TDCyPTUkdYuWlf0c8HWOpo+Rgn4ACtnmR+cQ==
X-Google-Smtp-Source: APXvYqzy+8FZpHxwtEyAT6srJEJiJqjxSon8t12qB+fWmARTjLHackI/xtBcTJxjgASHmysXfeGYU0416kLFLp4GuXU=
X-Received: by 2002:a1c:238d:: with SMTP id j135mr39913254wmj.46.1558339463850; 
 Mon, 20 May 2019 01:04:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190520063326.26083-1-hch@lst.de>
In-Reply-To: <20190520063326.26083-1-hch@lst.de>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 20 May 2019 13:34:12 +0530
Message-ID: <CAAhSdy2XQ+mEMkrPOKSCwf+vZAdRE5SHp+PdDWALcyHudo7BxQ@mail.gmail.com>
Subject: Re: [PATCH] riscv: remove free_initrd_mem
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_010426_679787_4A43DD81 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 12:04 PM Christoph Hellwig <hch@lst.de> wrote:
>
> The RISC-V free_initrd_mem is identical to the default one, except
> that it doesn't poison the freed memory.  Remove it so that the
> default implementations gets used instead.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/mm/init.c | 5 -----
>  1 file changed, 5 deletions(-)
>
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 8bf6f9c2d48c..b2341979d3eb 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -92,11 +92,6 @@ static void __init setup_initrd(void)
>         initrd_start = 0;
>         initrd_end = 0;
>  }
> -
> -void __init free_initrd_mem(unsigned long start, unsigned long end)
> -{
> -       free_reserved_area((void *)start, (void *)end, -1, "initrd");
> -}
>  #endif /* CONFIG_BLK_DEV_INITRD */
>
>  void __init setup_bootmem(void)
> --
> 2.20.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
