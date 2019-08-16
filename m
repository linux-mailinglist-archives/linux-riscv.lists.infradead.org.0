Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 213F790A35
	for <lists+linux-riscv@lfdr.de>; Fri, 16 Aug 2019 23:18:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cuFruj0eESMnYO5Ilrkmo9sGPfrIGjMsryYs8oSnYBM=; b=M8SrjcAwVwf0Ok
	lk4jfsKUHgOZT6MvFi8+80jKg+yP8Lrm7OyEGyXtvMXL1gxMyhuJU8J+VENPH6JMEIi2d4tA3nTQC
	bw6WMvJb00fQ/h7iHfGkQtAlUviuMdb8aTFvGnFjM5W7qQzwdbIOuID1qsomQQcnCg/i7wP7pQjTM
	YlzTfqY0BmSZA5o8fFoN0uCc6HKAlirqjAUc8y7feWfoT3JzAukdQn9c1dzuwMPSklVdfT+Vrl1ii
	+W8P1E/mnkf5BWWgth4xibyBxE5rwt906XRlHUiMSOT3A+5tdhEtZmZDcFOFgws4+1OlW1lT6YRd3
	fr4425aIPP4weqdDHcxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyjc1-0000KQ-6y; Fri, 16 Aug 2019 21:18:17 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyjby-0000K0-3U
 for linux-riscv@lists.infradead.org; Fri, 16 Aug 2019 21:18:15 +0000
Received: by mail-ot1-x341.google.com with SMTP id w4so10775663ote.11
 for <linux-riscv@lists.infradead.org>; Fri, 16 Aug 2019 14:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=carlosedp-com.20150623.gappssmtp.com; s=20150623;
 h=sender:mime-version:references:in-reply-to:from:date:message-id
 :subject:to:cc;
 bh=7qg99TOTiTvVpinuxXzsbfEFam5pyUUHN6cVGGiraJ8=;
 b=FSoIRnEhKdo5T0SljXK/ACNOPBR2+KszvcCGA+dzuEbr1ENmfwuOo6q35OJZSZNNxj
 qb/0gTV+MyegJGorMfM2hko1qYUPkMVCoRyjuhS74yEg1kl2syAKUcOpcj2x6OQ9lztj
 YadSJN8vCdisnZeeBLaqzwORxUVrt/x7VFtKStJvPfgHgh/QcdawAtUJHQNV0U0DGV5k
 Ou6bhPxTMl5esnpOpPb1uCDxCm94hfcOtwAE25/d5JboQL4bvqJk4LF/GrNMhKHv6LZ2
 sbWhVXt2DRbIn+XkJEWR6A1mnMbVkpzuewcHQt9xSAatK5+D3hCUQbSpsnNxT/su6dK8
 fiIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:mime-version:references:in-reply-to:from
 :date:message-id:subject:to:cc;
 bh=7qg99TOTiTvVpinuxXzsbfEFam5pyUUHN6cVGGiraJ8=;
 b=OWxwC07iHL+HjjfXCKmH35bSiSL0pNhxMPcSmAbafikcSpLqaHVhk51+mSwqoL5Q/E
 kt5Gwjjml0vQZ2dENtzFgu595EG8MYBp/9IzIdnEArgjUE/eThCHaFo8EoZ2dWGTuFlV
 XiFACaUd1qeWvOcpzH4gfig1gJ28PVSHMCG1+Ls1gL9KyKE5xet+YllxnP2OU1GL9VlX
 NuaCHw3NlVs+OxzkrNmWUUHKb/QjkO68Uh4AcBuxMf64YCwPJMs/2825t68TmAcP1B5E
 m8oQp7AyBuMrAKz2ZVKrl0vQhQr5CBSxlLCDIV12bwWCjfMpCE/2GFPPzZ+f49Eq8yPq
 wMSQ==
X-Gm-Message-State: APjAAAVtFxAUTqW8MT+yWxqKaqbE1j668+FiqDywqC3oIpQzARlzjkJ+
 OCJkvNFZVM6/VRN9hX1cvprGeoLXVWrAkQ==
X-Google-Smtp-Source: APXvYqxseM+zMqgyLeJGXfPiC6hlOI1xO8QkWI0JQk3kKnpVyKEl5Ce4MlRm0ma4UyTih6Yta361Xw==
X-Received: by 2002:a9d:171:: with SMTP id 104mr8319354otu.228.1565990291562; 
 Fri, 16 Aug 2019 14:18:11 -0700 (PDT)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com.
 [209.85.167.169])
 by smtp.gmail.com with ESMTPSA id u5sm2776594ote.27.2019.08.16.14.18.10
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 16 Aug 2019 14:18:10 -0700 (PDT)
Received: by mail-oi1-f169.google.com with SMTP id a127so5825166oii.2
 for <linux-riscv@lists.infradead.org>; Fri, 16 Aug 2019 14:18:10 -0700 (PDT)
X-Received: by 2002:aca:3091:: with SMTP id w139mr3985516oiw.27.1565990290419; 
 Fri, 16 Aug 2019 14:18:10 -0700 (PDT)
MIME-Version: 1.0
References: <CADnnUqcp_7yN4WK2uXberCV_uwjPSj0PxpiXg6kp71--QGPJaA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908131417450.29979@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1908131908000.19217@viisi.sifive.com>
 <CADnnUqeUwjhmFp5moem4Cx-ux1kAmhpdyeerTqZ2cNhyvrT_hw@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908161221010.18249@viisi.sifive.com>
 <CADnnUqcp0DDy1UOT4nMvokqLR2Y2BMU7=UfnOLnjXy7MQpRn-g@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908161354370.18249@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1908161354370.18249@viisi.sifive.com>
From: Carlos Eduardo de Paula <me@carlosedp.com>
Date: Fri, 16 Aug 2019 18:17:59 -0300
X-Gmail-Original-Message-ID: <CADnnUqfakeD49FhGGJaUT9Jut16=wK1rrQcoaZXZuwdzkk-f3g@mail.gmail.com>
Message-ID: <CADnnUqfakeD49FhGGJaUT9Jut16=wK1rrQcoaZXZuwdzkk-f3g@mail.gmail.com>
Subject: Re: Changing SiFive Unleashed core clock rate on 5.x kernel
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_141814_149215_221E93D0 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 5:57 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Fri, 16 Aug 2019, Carlos Eduardo de Paula wrote:
>
> > Hi Paul
>
> Hi.  Just as an aside, kernel list etiquette usually disapproves of
> top-posting.  Better to find out sooner rather than later, I guess...
>
> > I've built that 5.3 kernel and also used the DTs on my 5.2 Kernel but on
> > both cases the network interface didn't come up.
> >
> > I used both defconfig and my own .config, after this I've built latest
> > OpenSBI with the DT with command:
> >
> > make CROSS_COMPILE=riscv64-unknown-linux-gnu- \
> >     PLATFORM=sifive/fu540 \
> >     FW_PAYLOAD_PATH=../linux/arch/riscv/boot/Image \
> >     FW_PAYLOAD_FDT_PATH=../linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dtb
> >
> >
> > Any adjustment I need?
>
> For v5.3-rc4, you'll probably need this patch:
>
> https://lore.kernel.org/linux-riscv/1563534631-15897-2-git-send-email-yash.shah@sifive.com/
>
> and you'll also need something like this for v5.2:
>
> https://lore.kernel.org/linux-riscv/1563534631-15897-3-git-send-email-yash.shah@sifive.com/
>
>
> - Paul

Thanks for the tip Paul and for being very helpful!

I've applied the 5.3 patch you pointed and it worked!

Thanks again!

-- 
________________________________________
Carlos Eduardo de Paula
me@carlosedp.com
http://carlosedp.com
http://twitter.com/carlosedp
Linkedin
________________________________________

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
