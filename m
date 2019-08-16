Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FE590A63
	for <lists+linux-riscv@lfdr.de>; Fri, 16 Aug 2019 23:44:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n55ICA3GQZRRP+xpOpdoP+WEBAj3XaRmo63TRkZ2x8M=; b=l2jaqWpT13nz2a
	lll+WTSRkg1pfD+9rEuDLcgjB4R+utUVCarEqOhbJSdJfYzcnTOqVwTN1JrJ01IMv9kHSd3m++yPw
	yXktQsWonZ1X4EtLIkkBvANGRjT97ARqSOsi++4XHOd72+7PyZ89cYFiwWS9x1d7AMMmdBRtwDwgt
	/OSQyHO/N5MpH0vupkirf+kv6jxUGNAD09eAHabePnHCFcZshYaU3aFrwcEFqO+BPBP511dWjo0ke
	p0XUza7RzfC+Nl8DebAhlHs5/SWb+f8KRqLrnujqstW1q6HhVQMSoQ8uB56l53vKXRUZhcr4Meixm
	J2cksT5v387oZn/rAIxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyk1C-0007zc-Er; Fri, 16 Aug 2019 21:44:18 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyk18-0007zF-Nq
 for linux-riscv@lists.infradead.org; Fri, 16 Aug 2019 21:44:16 +0000
Received: by mail-ot1-x343.google.com with SMTP id m24so10823939otp.12
 for <linux-riscv@lists.infradead.org>; Fri, 16 Aug 2019 14:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=carlosedp-com.20150623.gappssmtp.com; s=20150623;
 h=sender:mime-version:references:in-reply-to:from:date:message-id
 :subject:to:cc;
 bh=jpeAoy8yIZXmvhoQ1zPA8wZRY8X5RVEKv2CdroPgkCI=;
 b=o+zWUX5TRVRAuF1KKS6gyaroEorbv+bB+LRrOK3GVq6sBXh0n4oGm1X5YaAxIynUnX
 dUuXrGxvMWOx+vsXC+WXAYYSP9BAVKRhz+KJGDL5wIANT/HfbzQPJgTzjHwgP2OHTCFE
 RDtKNpAkbaqaiL4V6a19pFQThlWYFFZnZV3XaetESxJtnfJ9iI4GegeJtFWfre+DiJeh
 Kk53Zofhr+mPsdtYmkaVmmsQ9h4q/nPKKNUKhPzYhbofF5XdtGfA+5DL4Su2fRopC70u
 OCWxPz7iDmI8cMNJBznncTGOKAN2kBMyOfBk5c6DxHai+RMn+U/co7WpOSVL47K0FmbY
 pivQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:mime-version:references:in-reply-to:from
 :date:message-id:subject:to:cc;
 bh=jpeAoy8yIZXmvhoQ1zPA8wZRY8X5RVEKv2CdroPgkCI=;
 b=Ko3/BCF85VMrkSpopvk5pP9gH1MXCSWsAMmPVuudu1YjgXNZwKvXtrJq8QIK/6+pJ6
 7bCCdpnJ3KkCwLS9dm8rdGUuelsqZbsdHF6QnO6nkhHCMIle7jr32HPmkrDBVaPOBetj
 tFbWABTV25RKMjyyNfFv5k3/e6bP0M4LKnK2Oht3BiLem2H52uUcA7ClOvuAZpLi9Vle
 3t9/NdgagXMjVPnZv12bxSFqxIOoeEJAMrBw/izbB+C/QYixCQlRmNEE9clTW82IUzgw
 4nKQPXKNz2RFq9glyY9tnUTMdU8zqLX2fVxbVe/7VTrPd9+V4tvlIth+AXfbNr8Ziu9J
 zU3Q==
X-Gm-Message-State: APjAAAX+M9d5pPedF0lVvu3wsvaiCtCZYzScAbUNnvyuJjcoHOdHRurT
 03GwI7F57DPEffQ7RhT7YNyf/3JD/ZXTdA==
X-Google-Smtp-Source: APXvYqyh4iFOzfuqZPamzCs3vfbrYvr3zLtvFX5sTYJ/5pPZCzO4VhVxEdcZpQQ4OTXKrTD/HnKMXQ==
X-Received: by 2002:a9d:6652:: with SMTP id q18mr9366925otm.162.1565991853203; 
 Fri, 16 Aug 2019 14:44:13 -0700 (PDT)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com.
 [209.85.167.179])
 by smtp.gmail.com with ESMTPSA id 9sm1845584oij.25.2019.08.16.14.44.12
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 16 Aug 2019 14:44:12 -0700 (PDT)
Received: by mail-oi1-f179.google.com with SMTP id 16so5855441oiq.6
 for <linux-riscv@lists.infradead.org>; Fri, 16 Aug 2019 14:44:12 -0700 (PDT)
X-Received: by 2002:aca:3091:: with SMTP id w139mr4040919oiw.27.1565991851937; 
 Fri, 16 Aug 2019 14:44:11 -0700 (PDT)
MIME-Version: 1.0
References: <CADnnUqcp_7yN4WK2uXberCV_uwjPSj0PxpiXg6kp71--QGPJaA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908131417450.29979@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1908131908000.19217@viisi.sifive.com>
 <CADnnUqeUwjhmFp5moem4Cx-ux1kAmhpdyeerTqZ2cNhyvrT_hw@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908161221010.18249@viisi.sifive.com>
 <CADnnUqcp0DDy1UOT4nMvokqLR2Y2BMU7=UfnOLnjXy7MQpRn-g@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908161354370.18249@viisi.sifive.com>
 <CADnnUqfakeD49FhGGJaUT9Jut16=wK1rrQcoaZXZuwdzkk-f3g@mail.gmail.com>
In-Reply-To: <CADnnUqfakeD49FhGGJaUT9Jut16=wK1rrQcoaZXZuwdzkk-f3g@mail.gmail.com>
From: Carlos Eduardo de Paula <me@carlosedp.com>
Date: Fri, 16 Aug 2019 18:44:00 -0300
X-Gmail-Original-Message-ID: <CADnnUqfUMLhHviuooyi_msTtRCykyG10dSCERWieu1vzZOOH5w@mail.gmail.com>
Message-ID: <CADnnUqfUMLhHviuooyi_msTtRCykyG10dSCERWieu1vzZOOH5w@mail.gmail.com>
Subject: Re: Changing SiFive Unleashed core clock rate on 5.x kernel
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_144414_781392_D0A125AB 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 6:17 PM Carlos Eduardo de Paula
<me@carlosedp.com> wrote:
>
> On Fri, Aug 16, 2019 at 5:57 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> >
> > On Fri, 16 Aug 2019, Carlos Eduardo de Paula wrote:
> >
> > > Hi Paul
> >
> > Hi.  Just as an aside, kernel list etiquette usually disapproves of
> > top-posting.  Better to find out sooner rather than later, I guess...
> >
> > > I've built that 5.3 kernel and also used the DTs on my 5.2 Kernel but on
> > > both cases the network interface didn't come up.
> > >
> > > I used both defconfig and my own .config, after this I've built latest
> > > OpenSBI with the DT with command:
> > >
> > > make CROSS_COMPILE=riscv64-unknown-linux-gnu- \
> > >     PLATFORM=sifive/fu540 \
> > >     FW_PAYLOAD_PATH=../linux/arch/riscv/boot/Image \
> > >     FW_PAYLOAD_FDT_PATH=../linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dtb
> > >
> > >
> > > Any adjustment I need?
> >
> > For v5.3-rc4, you'll probably need this patch:
> >
> > https://lore.kernel.org/linux-riscv/1563534631-15897-2-git-send-email-yash.shah@sifive.com/
> >
> > and you'll also need something like this for v5.2:
> >
> > https://lore.kernel.org/linux-riscv/1563534631-15897-3-git-send-email-yash.shah@sifive.com/
> >
> >
> > - Paul
>
> Thanks for the tip Paul and for being very helpful!
>
> I've applied the 5.3 patch you pointed and it worked!
>
> Thanks again!
>
> --
> ________________________________________
> Carlos Eduardo de Paula
> me@carlosedp.com
> http://carlosedp.com
> http://twitter.com/carlosedp
> Linkedin
> ________________________________________

BTW, here are some results with 1Ghz and 1.4Ghz using 7zip benchmark:

## With 1Ghz clock

7-Zip 16.02 : Copyright (c) 1999-2016 Igor Pavlov : 2016-05-21
p7zip Version 16.02 (locale=en_US.UTF-8,Utf16=on,HugeFiles=on,64 bits,4 CPUs LE)

LE
CPU Freq: 32000000 64000000 64000000 64000000 128000000 256000000
512000000 1024000000 2048000000

RAM size:    7973 MB,  # CPU hardware threads:   4
RAM usage:    882 MB,  # Benchmark threads:      4

                       Compressing  |                  Decompressing
Dict     Speed Usage    R/U Rating  |      Speed Usage    R/U Rating
         KiB/s     %   MIPS   MIPS  |      KiB/s     %   MIPS   MIPS

22:       1333   297    437   1298  |      27862   398    597   2377
23:       1322   303    445   1347  |      27705   400    600   2397
24:       1301   306    457   1400  |      27273   399    601   2394
25:       1300   314    473   1484  |      26903   399    600   2394
----------------------------------  | ------------------------------
Avr:             305    453   1382  |              399    599   2391
Tot:             352    526   1886

## With 1.4Ghz Clock

7-Zip 16.02 : Copyright (c) 1999-2016 Igor Pavlov : 2016-05-21
p7zip Version 16.02 (locale=en_US.UTF-8,Utf16=on,HugeFiles=on,64 bits,4 CPUs LE)

LE
CPU Freq: 64000000 - 64000000 - 128000000 256000000 512000000
1024000000 2048000000

RAM size:    7973 MB,  # CPU hardware threads:   4
RAM usage:    882 MB,  # Benchmark threads:      4

                       Compressing  |                  Decompressing
Dict     Speed Usage    R/U Rating  |      Speed Usage    R/U Rating
         KiB/s     %   MIPS   MIPS  |      KiB/s     %   MIPS   MIPS

22:       1805   307    573   1757  |      38545   399    823   3289
23:       1785   313    581   1819  |      37999   399    824   3288
24:       1583   288    592   1703  |      37377   399    823   3281
25:       1733   324    611   1979  |      36908   399    822   3285
----------------------------------  | ------------------------------
Avr:             308    589   1814  |              399    823   3286
Tot:             354    706   2550

Thanks!

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
