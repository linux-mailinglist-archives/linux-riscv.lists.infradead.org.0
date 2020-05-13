Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C181D20BB
	for <lists+linux-riscv@lfdr.de>; Wed, 13 May 2020 23:15:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=EwdTVTg8mmRP5YtYCIIiQPIfSg8ie3bF4e/q64Mg9dM=; b=TlC7uKZS2IGakv
	Ls/09KSn2G0OvV+2qkPDLaXwiPIhbJz8LsHRqFaey1o2mjvKG6HGJCILiLD7kXaOANHSA2N9CxDGj
	hEhxbRi+uMmaj1EMhQWQrqi3EaOpsVMTFecagnal1XM81qIukyMnLkRZguLfaqAz1dnc1E+eqReQJ
	HC99foIcT9PmnW0i3hJbBi7dTtB2TwJsBsSlEA+YhbQO3V/Lza+17s304ZGXX9zGMCJTKsVySmz7G
	UzJNGWc8igrjnaVJLa/HRJVSQ9ZgFwEraEPMXPAvwYoeIFoTF3LwZAMHSh1O5CyO2wFsv+3qj6iH+
	xg3bFLY87ve3Fp7XYaWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYyiP-0007dm-OO; Wed, 13 May 2020 21:14:57 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYyiG-0007Ry-Dp
 for linux-riscv@lists.infradead.org; Wed, 13 May 2020 21:14:49 +0000
Received: by mail-pj1-x1044.google.com with SMTP id q24so11524991pjd.1
 for <linux-riscv@lists.infradead.org>; Wed, 13 May 2020 14:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=EwdTVTg8mmRP5YtYCIIiQPIfSg8ie3bF4e/q64Mg9dM=;
 b=ELWbTBQYMw1XvDvuC2Kn+oknCOCk7pbhM1B7YzVDAwNi0aBs1VuOsZ+Lj2NrjCP/aq
 UfBUveSRhhzDGbCeDorUGAHsKfupE5Auv/hlDq20Xxi/Hw3K6Cp87zJMfwJPjk7exZog
 XtBvEIqd5heS6wyuxnHMr3YL4f2RGstprKzDmZZurxc6J4C9j4nKx/KPBn9Rg1bk8TOH
 v/d/6N1NOlmgRbHNiOvUAXDVtyFKH9CnQCm1U3fLMNk4hDVVh8vYHOHaQqyM9NNVszCZ
 l1u4Ov4Uz7XlrZH3vd5S8OAM35vwJk9cpeZumO4lGNtIXxalUQ9IXZmSGwpdxmY/3YLP
 TJ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=EwdTVTg8mmRP5YtYCIIiQPIfSg8ie3bF4e/q64Mg9dM=;
 b=sre4tNu1XVY1cvCv1wzpfC45F/Aaej85oqzCGEYB+DWwNp+3Z+JpGt8whLNozNkpIG
 GXZmvENZGtAOyuK0AfPJLMz1C9fBz6SqOLnPXeny6hPrfSL7VM15I6dPq6EOxjrK34dY
 lpmV87e26naJ1u55OqbiY850shUdVBHYFhSjbQnUzf6GArZyDCHNL0n3LOC6BVzX672Z
 g4SXpBy6ljlHAeyVlZAbJ64PC7qIgZ3Yq8RM4cDBYC04I+UIzHZ+EP/wZPxWPtsBB93Z
 /ij3X93xe3Sn5buPp5L1aNNQYXcmA3X3oLHv1UmuPed3LJmuwbdMMJmCq2jrAbtuuPYr
 NFbg==
X-Gm-Message-State: AOAM530eYI0pP4vhxk0VasJtH54zPIlyASdmK5LTIcLOuIGOkyT9/ITm
 KvE2MfAVr2i26BVLO1ChcB9B3g==
X-Google-Smtp-Source: ABdhPJwGk3yPQp40vsZT1dr+JMO18Awpnqmih5WSpB0ypDAKJcm2uCvFuwfG6YgL1KBBHK/B3F+czQ==
X-Received: by 2002:a17:902:bb86:: with SMTP id
 m6mr970708pls.341.1589404487623; 
 Wed, 13 May 2020 14:14:47 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id n4sm410257pfq.127.2020.05.13.14.14.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 14:14:47 -0700 (PDT)
Date: Wed, 13 May 2020 14:14:47 -0700 (PDT)
X-Google-Original-Date: Tue, 12 May 2020 17:44:25 PDT (-0700)
Subject: Re: [PATCH 09/10] timer-riscv: Fix undefined riscv_time_val
In-Reply-To: <20200511022001.179767-10-wangkefeng.wang@huawei.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: wangkefeng.wang@huawei.com, daniel.lezcano@linaro.org, tglx@linutronix.de
Message-ID: <mhng-0c491e9e-41fd-4f76-a048-55c03d9359f0@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_141448_553844_24E73163 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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
Cc: wangkefeng.wang@huawei.com, aou@eecs.berkeley.edu,
 linux-kernel@vger.kernel.org, hulkci@huawei.com,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 10 May 2020 19:20:00 PDT (-0700), wangkefeng.wang@huawei.com wrote:
> ERROR: modpost: "riscv_time_val" [crypto/tcrypt.ko] undefined!
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
> ---
>  drivers/clocksource/timer-riscv.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
> index c4f15c4068c0..071b8c144027 100644
> --- a/drivers/clocksource/timer-riscv.c
> +++ b/drivers/clocksource/timer-riscv.c
> @@ -19,6 +19,7 @@
>
>  u64 __iomem *riscv_time_cmp;
>  u64 __iomem *riscv_time_val;
> +EXPORT_SYMBOL(riscv_time_val);
>
>  static inline void mmio_set_timer(u64 val)
>  {

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>

Adding the clocksource maintainers.  Let me know if you want this through my
tree, I'm assuming you want it through your tree.

Thanks!

