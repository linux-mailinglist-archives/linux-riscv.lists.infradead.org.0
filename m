Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D5890801
	for <lists+linux-riscv@lfdr.de>; Fri, 16 Aug 2019 20:59:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSNUfxw7EWlrmz5fRhEtA+ECNQCsMmnCVxr0uZcho0k=; b=tzlaP9SrCfmwDf
	gNROteMyfMpvU+7T+Gwt9zA0BdCV1a9CKqZk47/MkDH/ZIuaVHit4But9fh63Po0nwhLLX0D4KomZ
	4cwbOpUcAX/vB3KIS7AmWc7UzafPq+nYxdjfPTJKyXCOq+FszR4qLAZU/Bk0kodNnHnPpxVAYjac3
	T7ejePLSQ6lWiMe4Aj2OkKmGuFKbqCSBrFwm+WPn2eeUBHUB2DpGRSCDVYr9J9EVj7zMi2lNtkrQN
	KfK0Dr2TwvwRH2/neHEAZaGoZ5p6CjleknVU0q85RSWBmOlYZ1sLTM8xZoSVFUbxzpe0cBqIvJLyA
	47Hu5rv9ye+zhrHNqxfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyhRZ-0003lK-Ew; Fri, 16 Aug 2019 18:59:21 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyhRW-0003l1-A7
 for linux-riscv@lists.infradead.org; Fri, 16 Aug 2019 18:59:19 +0000
Received: by mail-oi1-x241.google.com with SMTP id a127so5556835oii.2
 for <linux-riscv@lists.infradead.org>; Fri, 16 Aug 2019 11:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=carlosedp-com.20150623.gappssmtp.com; s=20150623;
 h=sender:mime-version:references:in-reply-to:from:date:message-id
 :subject:to:cc;
 bh=SEibUZOHmF5yIMTGyGZilbC3XB46Ju+sJYKJDJUqvlA=;
 b=Opr6nyuy2diGo8+aIXNFgj09KW2paQrjIaOwWECQOBrSdbEfli0ElzStDKwyInNFQk
 0J8r/MGnAPcLxatjMyrODdpe8sWv6cBnVD7LxjaCZPoaon44eXZaJCnQ/F2C29cQS1UB
 K75XJylO6lrU6uparKA6gBRxC4pW5BCHb+i6IyaHNXJLj7loKmbMHgvx8kbAD+PdFyMv
 pSFx7wzSEWVU1OMNhCjorZM0/qrR+2hKl+hGhtLIy936YL21tGTQy4KIQE/m35clrhsf
 uAM3/xhHJzvx7GRmrh/iatZkEj94ikj7ivGgUen8oocozaQsOD2X58gAL4TW/rr/ohF2
 +3pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:mime-version:references:in-reply-to:from
 :date:message-id:subject:to:cc;
 bh=SEibUZOHmF5yIMTGyGZilbC3XB46Ju+sJYKJDJUqvlA=;
 b=Kl9dK2tkSN527MzyZymruTo1B4tPdWzaK3RgAYhESp9jE1LGPgK/A4mP+pykio7D9y
 7RITjGi/fs2fNLSHK6Fmv1miqjXS0ee9mS7MmPNcelwhz+J3AbtAxtDxvX8Vd6fFfjpM
 YFg7nzmJrL+bry5KgK8ktE6G7XkCSG9oAAIMb/JqTd5/HSBSNDt3pca8tHAkrWB+p5ae
 oNnPaKXdjnbWAMKxed1fpAkt1ZSn74cp98I5zJfTTASyuZbxo+A17a4Yjpb5JXJiAw66
 VbGgWkp+l11AAO8P31zM8skJevRLZQCwKen49R/6vUv3QrW79EBxhZaesCFjVXHHtiHW
 FjMw==
X-Gm-Message-State: APjAAAUN6Q2g0c5uhfeV+J+IN52hVUtZvAXXaGOtCXKsOkS5pdxF+uzq
 BKJavczpSDdJB6fAZPBhJofuwQPMPcoszQ==
X-Google-Smtp-Source: APXvYqwoqxgD+mA6tHHi3vl9p487JgdAw0YjVhiHStA5Z7l3r/Hj4BfJWeaApCwMvkTYXdkFiFF1WA==
X-Received: by 2002:aca:bfd4:: with SMTP id p203mr6184669oif.95.1565981956555; 
 Fri, 16 Aug 2019 11:59:16 -0700 (PDT)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com.
 [209.85.210.52])
 by smtp.gmail.com with ESMTPSA id h1sm462603oie.13.2019.08.16.11.59.15
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 16 Aug 2019 11:59:15 -0700 (PDT)
Received: by mail-ot1-f52.google.com with SMTP id r20so10553345ota.5
 for <linux-riscv@lists.infradead.org>; Fri, 16 Aug 2019 11:59:15 -0700 (PDT)
X-Received: by 2002:a05:6830:154:: with SMTP id
 j20mr9102925otp.266.1565981954978; 
 Fri, 16 Aug 2019 11:59:14 -0700 (PDT)
MIME-Version: 1.0
References: <CADnnUqcp_7yN4WK2uXberCV_uwjPSj0PxpiXg6kp71--QGPJaA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908131417450.29979@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1908131908000.19217@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1908131908000.19217@viisi.sifive.com>
From: Carlos Eduardo de Paula <me@carlosedp.com>
Date: Fri, 16 Aug 2019 15:59:03 -0300
X-Gmail-Original-Message-ID: <CADnnUqeUwjhmFp5moem4Cx-ux1kAmhpdyeerTqZ2cNhyvrT_hw@mail.gmail.com>
Message-ID: <CADnnUqeUwjhmFp5moem4Cx-ux1kAmhpdyeerTqZ2cNhyvrT_hw@mail.gmail.com>
Subject: Re: Changing SiFive Unleashed core clock rate on 5.x kernel
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_115918_399304_85A32271 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
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

Got it, just to be clear, the sysfs changes only work on this 5.3 tree
and patches right? Not on my current 5.2-rc7.

Thanks!

On Tue, Aug 13, 2019 at 11:09 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Tue, 13 Aug 2019, Paul Walmsley wrote:
>
> > On Mon, 12 Aug 2019, Carlos Eduardo de Paula wrote:
> >
> > > Now with Kernel 5.x and with the board DTB, what's the correct way to
> > > set this clock rate?
> >
> > There are some experimental patches here:
> >
> > https://github.com/sifive/riscv-linux/tree/dev/paulw/cpufreq-dt-aloe-v5.3-rc4
> >
> > Only the userspace governor is enabled - for one-off, manual frequency
> > changes, like the one you mentioned above.
>
> By the way, the command lines to change this would be the usual CPUFreq
> sysfs changes.  Something like this:
>
> echo userspace > /sys/devices/system/cpu/cpufreq/policy0/scaling_governor
> echo 1400000 > /sys/devices/system/cpu/cpufreq/policy0/scaling_setspeed
>
>
> - Paul



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
