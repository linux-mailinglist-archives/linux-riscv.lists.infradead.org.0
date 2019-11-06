Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4585F1CC2
	for <lists+linux-riscv@lfdr.de>; Wed,  6 Nov 2019 18:48:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=7RUvV55TL+kd/UriwSzFujrG5u64O7IgS7SfjsG7GGU=; b=C9JwnV8l1ylqXUAVwp2L6AFU+
	qRTjUWb6HohlE+kswkUxCNdKuCIBR64cr1zj8uVgcrg9I2VptXdx3Qwr3d3PeToUIjyFTLYNXwjo8
	EQ3Usek4kNvRfD0ybmkR6pTdafLV7nULYS/UbYTJMLqUGMbU/yOHThf0EXtRcBTuXv2xIgittIBP0
	Y8CMOznuLfmkEA5sjRp24JycNo6kP7ngrMb73PSRdkPmpmCSMLS0d4OjKjHDGLWwUO9qTqOSdMCku
	hGFNGeoQz4a2ObJBv8R9SwE6clemZ1c/Xhyf15bzm6hF7XrhPzEMvkfKFplAnHwKDri+Wge7XB3uZ
	bmRMKix+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSPPT-0002xk-Oc; Wed, 06 Nov 2019 17:47:59 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSPPP-0002wy-OP
 for linux-riscv@lists.infradead.org; Wed, 06 Nov 2019 17:47:57 +0000
Received: by mail-pf1-x443.google.com with SMTP id s5so11217230pfh.9
 for <linux-riscv@lists.infradead.org>; Wed, 06 Nov 2019 09:47:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=jLVK2WlcaVQyNRbsc1cvkwH00Gi3//Qd+y3i+vGWGII=;
 b=f070bUplznEd4tDzRb/eMeXZaMF0IM6IL/8LpOtcRFLF6/+1cpjbGhaVbSILHJ1kbf
 l5LAWUGbg51jWEW/5felrEG2HybJOXvVSeSirZvJO5lwPlZp4jWfr4Q5Z+Qne0sJV3wa
 inukx8+Xq/L5BelohbepgUDT52nKqRZagq+QZ9KeSPpHhYk8olSqzVJZjFn3s/TCKx52
 2nXGBMGoJ7t7IZFyZ3lkHWwrZTNMKdvZUcn1tilPBOfLxMh8meGDG4QJW6E/AXixGtPc
 DM9ZfCiRaYyJR/Fzg8ZTroGl4lEVe4/8unKV0lrtedFAikOZHrwiHUoaPa80sQeHXgvp
 DlGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=jLVK2WlcaVQyNRbsc1cvkwH00Gi3//Qd+y3i+vGWGII=;
 b=nd4V3fnMCxlvSzDgSKDrYXrEGp7EVyOKznwQGdiPzEUdGWw5QjWkK0vVBBDeznTcmj
 obnaBbVuXBj1JEbj+6EjNwcInWYKNk68sTkIarSYs8bw0LmUv2M5YCBinRHL3REZ5ZlZ
 xU1GxhYdB+KMyJXLv+CQbWCInP/ulX+ld9AW4ttI3HtvecxHTtw6Xuo9IKW0KJe7gIGB
 6GcSVWNHFBB4CpPFwYkErvERA79ULMSIvzuPqvLbX+Mhf/3EYhcr+k71ur4y3iwTl+Fx
 m+V1jFDF69f+ubUtUpftf6rFYIyRrrovd5T7ECiLMSvgtsU6Idphs0bUoQOVlY6xg6PC
 jwVQ==
X-Gm-Message-State: APjAAAWA0WqtCb1mBj9d/1JJPO6/H3qdiPA/cDGVoeuFAIIVFr5iV7hL
 YT7VdHl/GcSXnTdJx6gB6ijb0U0OB4k=
X-Google-Smtp-Source: APXvYqyYNIYRggSXRQElqoLJQTOLynSrYJ7nZKm/MRTJ/TgRSe6f4yMAKEV6ZoQYqFXQladGruX/YA==
X-Received: by 2002:a63:81:: with SMTP id 123mr4418668pga.47.1573062474187;
 Wed, 06 Nov 2019 09:47:54 -0800 (PST)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id s8sm9979435pgi.54.2019.11.06.09.47.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 09:47:53 -0800 (PST)
Date: Wed, 06 Nov 2019 09:47:53 -0800 (PST)
X-Google-Original-Date: Wed, 06 Nov 2019 08:49:32 PST (-0800)
Subject: Re: [PATCH] RISC-V: Add multiple compression image format.
In-Reply-To: <20191106000652.8370-1-atish.patra@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-cf6b2a66-7749-4816-85a5-41a067eb5c32@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_094755_841496_5680C8C6 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
Cc: aou@eecs.berkeley.edu, anup@brainfault.org, linux-kernel@vger.kernel.org,
 Atish Patra <Atish.Patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 05 Nov 2019 16:06:52 PST (-0800), Atish Patra wrote:
> Currently, there is only support for .gz compression type
> for generating kernel Image.
>
> Add support for other compression methods(lzma, lz4, lzo, bzip2)
> that helps in generating a even smaller kernel image. Image.gz
> will still be the default compressed image.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/boot/Makefile | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/arch/riscv/boot/Makefile b/arch/riscv/boot/Makefile
> index 0990a9fdbe5d..88356650c992 100644
> --- a/arch/riscv/boot/Makefile
> +++ b/arch/riscv/boot/Makefile
> @@ -24,6 +24,18 @@ $(obj)/Image: vmlinux FORCE
>  $(obj)/Image.gz: $(obj)/Image FORCE
>  	$(call if_changed,gzip)
>
> +$(obj)/Image.bz2: $(obj)/Image FORCE
> +	$(call if_changed,bzip2)
> +
> +$(obj)/Image.lz4: $(obj)/Image FORCE
> +	$(call if_changed,lz4)
> +
> +$(obj)/Image.lzma: $(obj)/Image FORCE
> +	$(call if_changed,lzma)
> +
> +$(obj)/Image.lzo: $(obj)/Image FORCE
> +	$(call if_changed,lzo)
> +
>  install:
>  	$(CONFIG_SHELL) $(srctree)/$(src)/install.sh $(KERNELRELEASE) \
>  	$(obj)/Image System.map "$(INSTALL_PATH)"

Reviewed-by: Palmer Dabbelt <palmer@dabbelt.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
