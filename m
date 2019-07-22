Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 282636FADC
	for <lists+linux-riscv@lfdr.de>; Mon, 22 Jul 2019 10:02:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F4QneJEXhLJRdzYZHMAUC+sds703bsQiXtrbKttrIPE=; b=tuyEXMf2dYNu53
	Afdmt/ae2k6LTESedG06foo+PtGRNaQwIcJdcHbfwVRPiYwPNlf/H/wY+Qo123+zW0XeAa36osj3k
	GkUqqnjS/3YtuAVr/UeTXgE1GRjKo99tZVTbJO8LgFUJdG9u8hSQoakVUeoSNjWqcq1GFnVpawiwY
	8R5DuPaRLe1l7mWi1Bi8AnoaA+besUkcTkezqBBRCttvXJasDWysRxHzCZk1KZyznD5u/YgDoApKG
	LyhzMChJd9MFjU371n/4rdHXCXcElVasB8fltparSIqzEvvYsataYX0ww5EZq1j4dQZuoh+ja8+Cc
	EWg8AGWNK7Iio6m2oATg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpTH4-0007tm-4s; Mon, 22 Jul 2019 08:02:22 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpTGz-0007tH-5f
 for linux-riscv@lists.infradead.org; Mon, 22 Jul 2019 08:02:18 +0000
Received: by mail-ed1-x543.google.com with SMTP id v15so39784025eds.9
 for <linux-riscv@lists.infradead.org>; Mon, 22 Jul 2019 01:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9Mr2lXDff0lWl4Oqb0zskCrpJHB3nAzy/iWfb+JzHRg=;
 b=dXUYR9n3+f8L2eN97a1+qqhDgw3U3vSVikqYWbYvVYZtv6s9K1ZBTlKPBOLw7kYoAa
 V/2VI+EpUIFyS+tJJBs0tfElcRfOzateyJ/Ccr5d5Ne/o+JlDXwznlDbU7yF20TiyDK4
 nx7gf8igz7cQLsShnt/cgC96G+8GWnqmzV3cmpkxf4jQF7r6ds6NUPTa/OpJDI8HYNnD
 gBhpXA0GOfLdV3+TKY31dFdZXULRthpD/+9oGp1cjwz3dYBrbzy5BomaquuFB+L6RX8a
 7b01QqqVqhKiGELSTRdt+lWh2p9Soo2d77hATkoW22hkvVciAAEZcjSKvDm63Xeam2ds
 FlaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9Mr2lXDff0lWl4Oqb0zskCrpJHB3nAzy/iWfb+JzHRg=;
 b=THHO9nWTFeGOcZnb/SE7HAfFVMQ0P4Kgj+beC+E+VzQIRZwPVpTTT3y/FR9xyD2a+m
 o1aj16lS9sIk+IuBhui0wd7EOTWP50RfiGeuBnYnniKYcYKtwKnO+g2S1KfVSfvXRi29
 n8AkvN7mwUKRHh/pIvza8fW69ThjcfgsT+1+7vuwur2nMBLdv7KzY8RqJFtA/8eihRDd
 PJ+rdkRaW/9Zw0NyvZtHSvq26dnPyUEglTWHhIX22DzhzEWqEf9f5EUcWZRrMEsoe0B2
 XxGTCRzlgx6yjyXIFWkVbhKD/+mbi7UrEJ2vKzHSARdnA2brozRP5vp9VU82CQGwZ/tl
 JPsA==
X-Gm-Message-State: APjAAAWXYbsjJXuiYGW4BILOhwo5ShncQ21DPnCrXGyP4p4K6EZmZQhO
 UT7pVXK/ZcJpMpfLOr8QW6kV/NUBpBwbwFEqcWs=
X-Google-Smtp-Source: APXvYqxVb4j/pK7lQkG3nN5g+e254vhTdNkB8Z78w2sfgUfvMWSJbq4pUkAXHT0nNm5Hub6BqY7u/RfZeo+HumOqsbo=
X-Received: by 2002:a50:ad0c:: with SMTP id y12mr57892197edc.25.1563782534815; 
 Mon, 22 Jul 2019 01:02:14 -0700 (PDT)
MIME-Version: 1.0
References: <1562298766-25066-1-git-send-email-bmeng.cn@gmail.com>
 <MN2PR04MB60611BD1B89E3D76ABFBE94A8DF50@MN2PR04MB6061.namprd04.prod.outlook.com>
 <CAEUhbmWdLoRU1QGVZtwmymtYyQw43UMR8WDB17rJRmvXGbuBTg@mail.gmail.com>
In-Reply-To: <CAEUhbmWdLoRU1QGVZtwmymtYyQw43UMR8WDB17rJRmvXGbuBTg@mail.gmail.com>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Mon, 22 Jul 2019 16:02:03 +0800
Message-ID: <CAEUhbmU99JqdVXK4KKaRg+QSO=5tMPyet-dCmayD_fRx4nbCEg@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu node
To: Anup Patel <Anup.Patel@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_010217_238798_8011A44D 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>, Yash Shah <yash.shah@sifive.com>,
 Rob Herring <robh+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jul 5, 2019 at 1:11 PM Bin Meng <bmeng.cn@gmail.com> wrote:
>
> On Fri, Jul 5, 2019 at 11:59 AM Anup Patel <Anup.Patel@wdc.com> wrote:
> >
> >
> >
> > > -----Original Message-----
> > > From: linux-riscv <linux-riscv-bounces@lists.infradead.org> On Behalf Of Bin
> > > Meng
> > > Sent: Friday, July 5, 2019 9:23 AM
> > > To: linux-riscv <linux-riscv@lists.infradead.org>; devicetree
> > > <devicetree@vger.kernel.org>; Rob Herring <robh+dt@kernel.org>; Mark
> > > Rutland <mark.rutland@arm.com>; Albert Ou <aou@eecs.berkeley.edu>;
> > > Paul Walmsley <paul.walmsley@sifive.com>; Palmer Dabbelt
> > > <palmer@sifive.com>; Yash Shah <yash.shah@sifive.com>
> > > Subject: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu node
> > >
> > > Per device tree spec, the "status" property property shall be present for
> > > nodes representing CPUs in a SMP configuration. This property is currently
> > > missing in cpu 1/2/3/4 node in the fu540-c000.dtsi.
> >
> > We don't need explicit "status = okay" for SOC internal devices
> > (such as PLIC, INTC, etc) which are always enabled by default.
> >
>
> Yes, that's fine because those device bindings do not require them.
>
> > Absence of "status" DT prop is treated as enabled by default.
> >
>
> But per current device tree spec, "status" in cpu node is mandatory.
> (spec uses "shall"). Missing it is a spec violation.

Ping?

Regards,
Bin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
