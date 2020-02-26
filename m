Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A11170A7B
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Feb 2020 22:32:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q+3v35ElCbupo/qCfNun7bNsXyKvaSAB7a3GeWQ0Cy4=; b=TT3/kCbnSeFiqMTZHque8YTet
	A903sY0Zi24Jb/7nDNr5RUO/4+S2whLgP9b82tsNFJwrOh8aKlJgKpc0kPMagzPLA74DXYaaZFs4q
	QaKa28kAxDni6dA7CqOx0k0rx7y/+XML7nbVNml92fizG5M8fwfdfOyBRD/XHu4TkZIfmH9WCSgVj
	rvWfOp+MjmMT0EXF3vofbpchj+W2R/8/hN55zfRbIkRSX+zOaZqTBZ4VBCZZ42OkT9m+RUVKQ6YqS
	iVP5u90OMPB0ENGH/PII1dunAUyE0qnnaGYv4rsuHoPtcAlt20+WDFJPMLWQeZjmjAGBzK5c1tRTt
	6ymUAjsWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j74Hw-0008VM-Vr; Wed, 26 Feb 2020 21:32:16 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j74Ht-0008V5-8P
 for linux-riscv@lists.infradead.org; Wed, 26 Feb 2020 21:32:14 +0000
Received: by mail-oi1-x244.google.com with SMTP id a22so1035728oid.13
 for <linux-riscv@lists.infradead.org>; Wed, 26 Feb 2020 13:32:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=carlosedp-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q+3v35ElCbupo/qCfNun7bNsXyKvaSAB7a3GeWQ0Cy4=;
 b=wPgvgwCsrcQj4zF3xEwWbYk9GwXIOv6pdUzYf6MU1lX+a+JsUpLzLiUa5hgsTJAxG7
 Eac24tDUm2G5DMWl8Hc/EymTzJBXXafG2YLehm+ruY3OlO+6KDWMpn1yabOtQOFSRs+n
 jHEcS2rIVVDBtkVRHCvN9WCZzYxqJdc9Y+4TFCeWoCwGhOz9rwhqeFEfE7UJMWlYaiXm
 Uq0ccTDQUtzT2EsbYmodHqX1Q2RbVNXTADj/iJAJYpOK2/IzRO6ELOEgsyU0oSYilDzU
 MZ4KwBWB+nr+ZIQvppoHwP/l0f6WMjfKrIxhpklZSmrwDspunU8/PEN1BMkBU5o5qruS
 HPLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q+3v35ElCbupo/qCfNun7bNsXyKvaSAB7a3GeWQ0Cy4=;
 b=GmU9y1RoUYkUQjAdrTv+TFlGapPcq+J2vR0gQlPrtssKAdipAlRAiHe3mIn4GHQYPE
 AjjcZVkkURBjoxV6FWAZAxxZ/pT880KUaUEQUd3FeQx2w0r5sYRjFkdNLuBDZjb53IMt
 hOHS7IL16Pv0T0e3xaTnBTl0KQL8ovBAY5a7hpGVdmH1plP7m2o1lrQF91NGr/1p1cQl
 yIHYa7kQfavERpq2ATFWvwovHpr7XqYUYVbco62nWqOzb0RmIn9u2L+ue6fh1E0OLMpW
 QYy8/Knm8dqA35JdFejd0HEFy8hneq4S8XhPyBVVwHyg7n2LpUcv9e+gTHrhxikmaI0c
 Yw4w==
X-Gm-Message-State: APjAAAWaJS7Y+ZmRiR2iT6A0mWlir3YYBj8ficpCEqsZSeabDya0iUwX
 Y5FIqmLnconJdXU7Gy8RBmLdPwZTk+cNoQ==
X-Google-Smtp-Source: APXvYqy0ySqWdIXlSB+0XoIjTNBw4voZLxsv/MuZ3mOvdg7u0qKlrmMlNlO0SdUaNCOx+WtUFHT2Vg==
X-Received: by 2002:a54:4091:: with SMTP id i17mr843235oii.99.1582752731619;
 Wed, 26 Feb 2020 13:32:11 -0800 (PST)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com.
 [209.85.167.176])
 by smtp.gmail.com with ESMTPSA id 67sm1239621oid.30.2020.02.26.13.32.10
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 Feb 2020 13:32:11 -0800 (PST)
Received: by mail-oi1-f176.google.com with SMTP id a142so1077326oii.7
 for <linux-riscv@lists.infradead.org>; Wed, 26 Feb 2020 13:32:10 -0800 (PST)
X-Received: by 2002:a05:6808:b39:: with SMTP id
 t25mr829747oij.71.1582752730403; 
 Wed, 26 Feb 2020 13:32:10 -0800 (PST)
MIME-Version: 1.0
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <CADnnUqcFbmspQ0fcggoyPTE4mckoGahHmaNdcJeC7GJD7C16uA@mail.gmail.com>
 <BYAPR04MB5816C1EADCEF92F1F1DE60E0E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
 <CADnnUqeWqL4+_ZTKBWW_wh=pqOn1DdgOr=P3iw4hJzEjYCxCeA@mail.gmail.com>
In-Reply-To: <CADnnUqeWqL4+_ZTKBWW_wh=pqOn1DdgOr=P3iw4hJzEjYCxCeA@mail.gmail.com>
From: Carlos Eduardo de Paula <me@carlosedp.com>
Date: Wed, 26 Feb 2020 18:31:59 -0300
X-Gmail-Original-Message-ID: <CADnnUqfQCc_-M0Ga-u7swRoZyxVRz08JMYxDCFZha8tA=MaJZw@mail.gmail.com>
Message-ID: <CADnnUqfQCc_-M0Ga-u7swRoZyxVRz08JMYxDCFZha8tA=MaJZw@mail.gmail.com>
Subject: Re: [PATCH 00/10] Kendryte k210 SoC boards support
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_133213_323143_CCFB027D 
X-CRM114-Status: UNSURE (   6.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> >
> > >
> > > Thanks.
> > >
> >
> >
> > --
> > Damien Le Moal
> > Western Digital Research
>

I've integrated all required changes into a buildroot fork from your
repo where it's possible to build the complete image (Kernel + Patches
+ Busybox iniramfs) in a single place and there is no need to place
the toolchain outside, build the kernel and etc.

The changes are in https://github.com/carlosedp/riscv64-nommu-buildroot.

@Damien Le Moal I can send you a PR if you want.

Carlos

--
________________________________________
Carlos Eduardo de Paula
me@carlosedp.com
http://carlosedp.com
http://twitter.com/carlosedp
Linkedin
________________________________________

