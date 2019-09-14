Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F9EB2B7C
	for <lists+linux-riscv@lfdr.de>; Sat, 14 Sep 2019 15:58:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8T5D7jY/qgu0VEIjF302IVqAQwwzzGueODS5Y+bV11c=; b=hfBYhNjnQWWTxv
	vHb2oiNiWObi677/tUffnVPDqVlauYC6fOM2cufQcmFK6hXMtzKvmhkeATOXekkoSotftKIA6KUeU
	rEPPqOaosDIog67pQeg3xEhg0cm3VTX824Dh0+hbHHZNGTcPebFF9cQ8ZYjHgoMkHWB+SDvJnJZbh
	LAt5m/dv4KgvB13TkF41g1N71VwKSyr0naGqq4iBzx73OZecC4U7UdtMBoYbDXiU8IKNaLYtgNTZi
	F+0P42bLWP7flAAktErzr3M5kWTYv8jkI1qdvvwB/hDQra73OANYekdhGmcvU7+vEuQJ8N8RelwrT
	afSE0QpRYKXwNEZhhuuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i98ZE-0001hX-RH; Sat, 14 Sep 2019 13:58:25 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i98Z8-0001h9-MJ
 for linux-riscv@lists.infradead.org; Sat, 14 Sep 2019 13:58:20 +0000
Received: by mail-wm1-x341.google.com with SMTP id o184so5537446wme.3
 for <linux-riscv@lists.infradead.org>; Sat, 14 Sep 2019 06:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=xeo1NeXkitHOCMx0+mNiWwWG6fFr/hiP/k5Dg78CY+w=;
 b=ZnhjKMzfJ2eq1eLUMTf3kqITmmadfrXWIUNMx4R15sbG8vdFwhVr+7O110Z/9OuBgj
 G3a7VLVsvmAOAnrPyKEiEP8LVDajZ9F88VQjI51uEmOex0dc6YtD4pzP6wko0pKSSkr8
 q6oqyveZL5bJSDQxSWZzEknTCVVWnQH60baLUIyL0QTX0UA5jvhY+4EiRYEnfMs8rjRs
 XlezleSsdbLjfRGf4NXM/5pg79LOOjKtPxEwt/zdOr0hNodPy34XA0HmVTqBcBGL5RMP
 dLJGF0s/c0p5GgzYsUJYV1TrU4ddrSfaHclBqfo7tMY4H0QGBxa6LYkHcODAHGOWfwyK
 FLjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=xeo1NeXkitHOCMx0+mNiWwWG6fFr/hiP/k5Dg78CY+w=;
 b=WNBPmYjwB1zrokzxMitBDFd5hTymP4CViwsrPEXYV92aDuTiIkp8n58zVPYOPLA4PL
 EF8mgPsro2w8MNKlysxzAX068xKVtSY97I33j5IlxTn/jGquyDgZ0VIIBpVakdCiDJzF
 7/2DpIbwhz2Cjnw8eyIhgEP4DsAnkzm5eq4PQoDmX+kbcPC077LT9F1kAKzXBMlafZiG
 Mbtl4Sivay2+bNE+9j+sflIX1qC3hBrcTKZnI+KM1W0XiIQ+l7jQhEaR0FSzXRXIVtmS
 VwX5P+5/yc+EzqHrv22w2yZYCGvhv0UOXYSOLloX9bE5c0z6WoNdcAG0X6/Rf6afOlA4
 2+7Q==
X-Gm-Message-State: APjAAAXPG/dSd3BAgweTfU3zTH7XQhcfGv1yc5u8RTKHVdSpkxuRCPFh
 CJ6M6MO60J8+SLmVswUrWnPf8w==
X-Google-Smtp-Source: APXvYqynT6tmk0Bp/RtMhx53/YTcUp8rnpQPanFoCs6PDLI+3NKWwpJ+Eey/g5k8pR2ud2lzrT88gQ==
X-Received: by 2002:a05:600c:285:: with SMTP id
 5mr7930021wmk.161.1568469495784; 
 Sat, 14 Sep 2019 06:58:15 -0700 (PDT)
Received: from localhost (193-126-247-196.net.novis.pt. [193.126.247.196])
 by smtp.gmail.com with ESMTPSA id g15sm4626153wmk.17.2019.09.14.06.58.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Sep 2019 06:58:15 -0700 (PDT)
Date: Sat, 14 Sep 2019 06:58:13 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [PATCH] riscv: modify the Image header to improve compatibility
 with the ARM64 header
In-Reply-To: <2e697e9c7966cf1a6cac415b6a247a8ba9f4de29.camel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1909140653070.10284@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1909132005200.24255@viisi.sifive.com>
 <2e697e9c7966cf1a6cac415b6a247a8ba9f4de29.camel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_065818_741628_388743CC 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "merker@debian.org" <merker@debian.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, 14 Sep 2019, Atish Patra wrote:

> Thanks for the quick fix. Is there a planned timeline when we can
> remove the deprecated magic ?

If Linus merges this patch, we should probably start the transition in the 
bootloaders, QEMU, and user tools as quickly as possible.  Probably the 
key element in the timeline is when we remove support for the old 64-bit 
magic number location in the kernel.  I'm told that U-Boot and QEMU have 
already issued releases with support for the v0.1 image header format, so 
dropping the old magic number from the kernel is probably at least a few 
years away.  (This is to increase the likelihood that anyone using the old 
software has had the chance to update them.)

> I was planning to send a U-boot header documentation patch to match
> Linux one anyways. Do you want me that to rebase based on this patch or
> are you planning to send a U-boot patch as well ?

Once v5.3 comes out, please go ahead.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
