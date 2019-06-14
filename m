Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F568457A0
	for <lists+linux-riscv@lfdr.de>; Fri, 14 Jun 2019 10:36:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4nTN3QLbcEoSp/eSrmgpuEOCwij+kF3DDkAy1Jg75I4=; b=Tpaon10UI4L3qTLz+OmdN45KX
	/D1UC74kPzqC0vdZaLP5EFCKizm4qJe7oGRy8eZn6KUg68MtJp/mzYq3Ot5kOv/HSozOOscCmwxfB
	nKmkX4yGAJFVedw/Ebg4Ic1clPZ4w2/9ota4BFOCEvxWJqKkVlOxV8xwSdSt/NtP4+0oBcGQJ/z+0
	XcXr6O0Q0QKSEhc/Iwo+HWG01HPrQIfod3hiyUcQBhXgtb6KlyMU/m8coa84F/z6t1dEK2FeV4K8l
	vyH0xxl77KK5gWE8plOs1MOriB6ZMTWaMbv5xD1bmWoBxsT8jDVT+wOveeacGfPsLS9GJNH86XkHT
	Vmyy+gQIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbhgj-0008PG-AX; Fri, 14 Jun 2019 08:35:57 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbhgN-0008D9-GH
 for linux-riscv@lists.infradead.org; Fri, 14 Jun 2019 08:35:36 +0000
Received: by mail-lf1-x142.google.com with SMTP id p24so1137632lfo.6
 for <linux-riscv@lists.infradead.org>; Fri, 14 Jun 2019 01:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pWi+5Am3aiah73yNoWhssqvYmNUO+DbKo0cUh/HhkqE=;
 b=pKRcA/99Kn1RlfqkHCYqITsKL7wcnLiDSjciQMsaMhyKPrztKtivTtE5j6rxb/p5mm
 m9XTZ4uAkazuHYYFeuR92f/e88xXmS32is65BsB2JBkW6wS0oiYDvfo+Y+c0cXfPJF/B
 r9FM/Df0Rb/33FclCysY54h+m5sSqYcwvaqnXP3YyIlemTEuVl+7OaUdilcQbnk6A4lR
 LU/f5FEfNUuL9DGNwp2Pg+v0B0BOXwVZpQ9RSJLtV4VVl5VMRs/3ApUkL6ieZSnrQ3Vv
 EABPOWr8yihT8hyr5T9ABQSv57oEbueA1tmjA49U0HVBi7OZAojYps6AEv+Nny2MR4oJ
 sJ/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pWi+5Am3aiah73yNoWhssqvYmNUO+DbKo0cUh/HhkqE=;
 b=U+r6ZaBqJNDR6mNjvEYu65RthkluSYCBcg/XlUfA3GuqYUUJv754WBgyW1i76e4ecz
 PLOBt8uQ7ptaD/gjNcUyQtVGmCZUF5E2FNPbOcLyCjiz1Jjhr2VJ9+qTehETvKA7LvzW
 yjas1jO8nPnVVXT6tPVgXG0ta2QIn8H/i1cVxP7I8Vw/Ylus9PHYBUgAS+8GCJ6VEazA
 UNkaz3kOHjEQkCgjf6fzcS0/M8E8ar6v9A01kei1qHxSnTPQsxlBjyoI3nx1jQ1E9YkV
 goEp0+0PRpOi/jO0/OpG5wHYHsKTfrW9gGhhUM/ECPJ8JowkJeXq60hSTet0hkxvlsj3
 3mHw==
X-Gm-Message-State: APjAAAULATWRJUKIGR1NZ80JhEYal35M8Ng5A+HFCaKawqWNIp4BIzAp
 9yRxYzhk5/VQ3AWxxw04+JIhpA==
X-Google-Smtp-Source: APXvYqx2uAm03uGrknxT6QYWcLV22zpl1XfOYxHWcwU5kxumOqNqeSXIVWkf4PB3EpjuqDpve5pyOw==
X-Received: by 2002:a19:22d8:: with SMTP id i207mr44177294lfi.97.1560501333006; 
 Fri, 14 Jun 2019 01:35:33 -0700 (PDT)
Received: from [192.168.0.199] ([31.173.84.143])
 by smtp.gmail.com with ESMTPSA id 24sm504402ljs.63.2019.06.14.01.35.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 01:35:32 -0700 (PDT)
Subject: Re: [PATCH 15/17] binfmt_flat: move the MAX_SHARED_LIBS definition to
 binfmt_flat.c
To: Christoph Hellwig <hch@lst.de>, Greg Ungerer <gerg@linux-m68k.org>
References: <20190613070903.17214-1-hch@lst.de>
 <20190613070903.17214-16-hch@lst.de>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <e000b92e-a047-936e-c20a-9cc8b4f524bb@cogentembedded.com>
Date: Fri, 14 Jun 2019 11:35:20 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190613070903.17214-16-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_013535_550088_60701ADE 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello!

On 13.06.2019 10:09, Christoph Hellwig wrote:

> MAX_SHARED_LIBS is an implementation detail of the kernel loader,
> and should be kept away from the file format definition.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   fs/binfmt_flat.c     | 6 ++++++
>   include/linux/flat.h | 6 ------
>   2 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
> index 0ca65d51bb01..ccd9843e979e 100644
> --- a/fs/binfmt_flat.c
> +++ b/fs/binfmt_flat.c
> @@ -68,6 +68,12 @@
>   #define RELOC_FAILED 0xff00ff01		/* Relocation incorrect somewhere */
>   #define UNLOADED_LIB 0x7ff000ff		/* Placeholder for unused library */
>   
> +#ifdef CONFIG_BINFMT_SHARED_FLAT
> +#define	MAX_SHARED_LIBS			(4)
> +#else
> +#define	MAX_SHARED_LIBS			(1)
> +#endif

    Perhaps the time to remove ()?

[...]

MBR, Sergei

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
