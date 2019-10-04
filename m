Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EA6CC528
	for <lists+linux-riscv@lfdr.de>; Fri,  4 Oct 2019 23:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wq1z128XTixlTkKUj1Kh4jqdeIN7ecCutVRI/czcA3U=; b=h1Ak89GLVC9BX/
	KRml0p0UfN4eniAm+rEpqRjS98e5w0VIBhpSf9PUletct/djwK8rhZGe2oOdK1np+3gLA2SRe5lJH
	PslNTJ6mhcyhy/Rd9tLXtgAsm1Q6CkqP5yK5wfTcdat+rtvY40MgCQa0+Ft0gp/qeXc2/gzw/Zl7q
	ZInFRF0jRg9GVovEZGTXqplEhLA62Y97uXuQD7mINkXzLyaZRwdbotE4Xvka1RmAaBQAWvznGbUcF
	FlCOiEHNO1ug/o+UnuzxmPIempg9Y51fGk5qzYxcbkCPNIru25+CqU6beVA3ztavojdbp51SD+x/7
	EeJ5uN7ngnMzV9pRCa+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGVOn-0002uJ-CK; Fri, 04 Oct 2019 21:46:05 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGVOj-0002sq-BB
 for linux-riscv@lists.infradead.org; Fri, 04 Oct 2019 21:46:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1570225561; x=1601761561;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=GsdOAMBWqQKtjvp7rGC8aXc/V0KDeh17dQ05YBgTriE=;
 b=idGpJpbJQyC9u4smC+axy/MccCCW6+TAJu4mH+pbXk7ISWHhuTRnPlUj
 DmkmxVrkVhEqk2hgrtbmtGSudBQavKYHCtXd8ShHB1RtlhDUqwHyhcHnR
 s6mNTAKtaW+CwJZu5pkI2UWOWP6HWaP+YwEib1j/uyoeok6ccUtF0gM2A
 tpzCdfnbQmHFsRZab85F4x4FfQgDmFL5GRRrko62Q9OePiZ6jdFCuumID
 4OzsM2AykvE6McyZjQQExoEou8GSZ+ypiYAmuTOPOBPh7SwEW9vvbWKAl
 MJZaGtHWq5xRifqfy6gZonshQBPODRMEVsMj6X0G6KQNTFH+D4MoHooao Q==;
IronPort-SDR: 68tG+3lOinD6NHX76la5nkT5xWRVnse3dtdfz6u9OZrU7M8AglKw95Dt9k+9Tv3bLNDrYP/v3z
 /ahVehlCZLJrlEVzXOa/zP1Y9TO9nPYmITrJW5g2xXfSo0SFSGQfHVlPqwRb9mhTyMnxGaC/zE
 AVJXVX42PK5SFujN2HGuFKXRFHatybAJzTDVy4g8XjS/2MTMWLQzu1ZX/zbr3Z2wnjaAmL7Gjt
 UPZfvE4kHUSqpZS9RDjt4FdTmppKLAxc62R/Y6eE8Qi360Y8IQVb5aqFK8b2/h/P6pD4qeDR9n
 /9w=
X-IronPort-AV: E=Sophos;i="5.67,257,1566835200"; d="scan'208";a="119837120"
Received: from mail-by2nam03lp2051.outbound.protection.outlook.com (HELO
 NAM03-BY2-obe.outbound.protection.outlook.com) ([104.47.42.51])
 by ob1.hgst.iphmx.com with ESMTP; 05 Oct 2019 05:45:56 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gr7sTrhj/A02q62S+Dl/zMgHz6xhb3X5K2XZt0fr/i9mY6v2nmC+P4SwwRVXiOlgcZP80FnNzwJtwT377z0MMHW4LB0rNlQ2cBIUz+LulLTVjfaW6EhDonxPeU48NkXWL9V7Qk8wzyCGFQreZSupdwh0J0V+D0h6DIis/4wsbgDQcBtoJ4ahvhokZ+270K/wPqwGnJ2gIKP/QbWpETR/ghosBRHxC/yHa8rp2nxEXvyOjMlelBCaUSCotlcGGWC7q2+8W0Z4mgZznbmO4QwJwcjtdop/PjdaVmAykaYrsAxbiBWMvgceLczautpW87068FCvV9rCkUGrdkLdxlIupQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GsdOAMBWqQKtjvp7rGC8aXc/V0KDeh17dQ05YBgTriE=;
 b=kWqB8Orr5TjSeSTTGH7QPQER5Yz1nWZ/dyXKQwRSRHt0L0SAfJhc5CDnpney8lCEZ27JHIvEaDsaEzYQdLDGJEkB6n6TqielOBCTNu5VZIAr9RsP2dcEmwX4ZwJ3VzFQsNOmQjVsIw9NVLHRI/LqmhqA9LGYsJnEACDKGnVlPq9FPvXBE2RrNsYfrTGvd4ihMG5NyImlmJe8f0+ic8iUgzTuMQbsX71w4qwJYPwxOGKvuPBD9WGohjC7Wd4c5eaG5L90dhNg5QE7nnpNt0tWdLP8encKjltCa8KPWbWoZsmP9zzOZesco0oaVX8XsFIcMj7b/cqqwv6OkUgphkrYog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GsdOAMBWqQKtjvp7rGC8aXc/V0KDeh17dQ05YBgTriE=;
 b=ndkdAR8inlv84QkqHSQXb7fiPArnaZBfOJNuLB7m0Wxr+7gCkpVswwVws6QaNT+9PHrhrwpLGHWx6FJpykZVdvWzaNe4S5YoQcxVxhXhrdd8rK8dLJa+ImFksm8AY+KXPXcSr6HgPn/PV9xJojyqEBm9nJHvhAxpmLQuSN+nDtM=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5799.namprd04.prod.outlook.com (20.179.58.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Fri, 4 Oct 2019 21:45:55 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::a50d:40a0:cd7b:acbc%5]) with mapi id 15.20.2305.023; Fri, 4 Oct 2019
 21:45:54 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "palmer@sifive.com" <palmer@sifive.com>, "schwab@suse.de" <schwab@suse.de>
Subject: Re: [PATCH] serial/sifive: select SERIAL_EARLYCON
Thread-Topic: [PATCH] serial/sifive: select SERIAL_EARLYCON
Thread-Index: AQHVZ5zswty3GF3Lq0WixhbTjk0muackeuqrgAAB/oCAABSJ3IAAaZoAgAUcroCAA8z7gIAAnw2AgAA6NpiAACEDgIAcS/yA
Date: Fri, 4 Oct 2019 21:45:54 +0000
Message-ID: <e3d91f171a5a3bbbc7d4e0957bd843d63c9b587c.camel@wdc.com>
References: <mhng-5091669f-461c-4e62-a71c-e16957801fad@palmer-si-x1c4>
In-Reply-To: <mhng-5091669f-461c-4e62-a71c-e16957801fad@palmer-si-x1c4>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.170]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c7f4b246-cdd2-46bd-4b89-08d749143bee
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: BYAPR04MB5799:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BYAPR04MB5799C5A96A76E6EB8E628EACFA9E0@BYAPR04MB5799.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 018093A9B5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(346002)(396003)(366004)(136003)(39860400002)(189003)(199004)(6436002)(476003)(229853002)(6486002)(6512007)(446003)(6306002)(3846002)(305945005)(11346002)(7736002)(2616005)(66446008)(4326008)(66476007)(64756008)(66946007)(478600001)(76116006)(71190400001)(71200400001)(102836004)(966005)(66556008)(14454004)(5660300002)(316002)(76176011)(36756003)(110136005)(25786009)(26005)(2501003)(6506007)(66066001)(118296001)(2906002)(14444005)(486006)(6246003)(256004)(6116002)(8936002)(99286004)(81166006)(81156014)(186003)(8676002)(86362001)(54906003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5799;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zn8ChTfVy8CV8GDzEoGqt39u2bGrCCGXb27iFjAbAl1aG//kE9EQc0wxBD7ZUwBFf25pohDbxniiFYy0H6ySf8d8MJ60LfXV3J4rATRalTCwpU5bxZd8eqLd1kxHM0KAEydnU9cnLZE/zNm+yOiCAO1LtW6rywiUU9G7O5GrQqOwZUjxSkp3SRBTLUMv4MA4j3Tk5nyo8TpypZlbSEmzs18PaVy4CiD9pHcBUn6rO6MxUPuQEYb8aasQEdO/75bEFYelniuVSRbSClwLpJPy2b80I45Dxhbn7fnvl9CeaNwByXXIbTmL7uzkjyf/m9QUT8kBKw+yy8O6wbJ/vbklIT/cHf+Fv9w0yNILGmqpYtcfDTd+oJaCfLHTtzW19gEDTX9leUov2F6+nL6dp3pDBN+0qnlAMoNtT70Zet1ijkYKufpaO2uVOwQ6gSJbz6fIGuEsSUlTjZHO7Pwl+Q7E9A==
x-ms-exchange-transport-forked: True
Content-ID: <95E894A3CD0C17429BA2C6F79F22071D@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7f4b246-cdd2-46bd-4b89-08d749143bee
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2019 21:45:54.8281 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AatPjnPUVi2/b46SHqGGvFkri/ABltYtE6nTlCMaKBoMjdJMFieFei+27OOmekTQ17yKd3YSn+IlzRS5JlQUKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5799
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_144601_489678_96A3EB63 
X-CRM114-Status: GOOD (  30.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 2019-09-16 at 14:38 -0700, Palmer Dabbelt wrote:
> On Mon, 16 Sep 2019 12:40:10 PDT (-0700), schwab@suse.de wrote:
> > On Sep 16 2019, Palmer Dabbelt <palmer@sifive.com> wrote:
> > 
> > > On Sun, 15 Sep 2019 23:42:53 PDT (-0700), Christoph Hellwig
> > > wrote:
> > > > On Fri, Sep 13, 2019 at 01:40:27PM -0700, Palmer Dabbelt wrote:
> > > > > OpenEmbedded passes "earlycon=sbi", which I can find in the
> > > > > doumentation.
> > > > > I can't find anything about just "earlycon".  I've sent a
> > > > > patch adding sbi
> > > > > to the list of earlycon arguments.
> > > > 
> > > > earlycon without arguments is documented, although just for
> > > > ARM64.
> > > > I can send a patch to update it to properly cover all DT
> > > > platforms
> > > > in addition.
> > > 
> > > Thanks.  I've kind of lost track of the thread, but assuming that
> > > does the
> > > "automatically pick an earlycon" stuff then that's probably what
> > > we should
> > > be using in the distros.
> > 
> > Except that it doesn't work.
> 
> Sorry, once again I've lost track of the thread.
> 
> The code looks generic.  The device tree in arch/riscv for the HiFive
> Unleashed 
> doesn't have a stdout-path set, which if I understand correctly is
> used by the 
> automatic earlycon stuff to pick a console.  I gave this a quick test
> on QEMU, 
> which finds a 16550 earlycon for me.  I use openembedded's
> qemuriscv64 target, 
> the following diff to make sure I'm getting an earlycon
> 
> diff --git a/drivers/tty/serial/8250/8250_early.c
> b/drivers/tty/serial/8250/8250_early.c
> index 5cd8c36c8fcc..61290714bbcb 100644
> --- a/drivers/tty/serial/8250/8250_early.c
> +++ b/drivers/tty/serial/8250/8250_early.c
> @@ -106,6 +106,7 @@ static void early_serial8250_write(struct console
> *console,
>         struct earlycon_device *device = console->data;
>         struct uart_port *port = &device->port;
> 
> +       uart_console_write(port, "_e_", 3, serial_putc);
>         uart_console_write(port, s, count, serial_putc);
>  }
> 
> and run this command line
> 
>     /home/palmer/work/linux/openembedded-riscv64/build/tmp-
> glibc/work/x86_64-linux/qemu-helper-native/1.0-r1/recipe-sysroot-
> native/usr/bin/qemu-system-riscv64 -device virtio-net-
> device,netdev=net0,mac=52:54:00:12:35:02 -netdev
> user,id=net0,hostfwd=tcp::2222-:22,hostfwd=tcp::2323-
> :23,tftp=/home/palmer/work/linux/openembedded-riscv64/build/tmp-
> glibc/deploy/images/qemuriscv64 -drive
> id=disk0,file=/home/palmer/work/linux/openembedded-riscv64/build/tmp-
> glibc/deploy/images/qemuriscv64/core-image-full-cmdline-qemuriscv64-
> 20190711162644.rootfs.ext4,if=none,format=raw -device virtio-blk-
> device,drive=disk0 -object rng-random,filename=/dev/urandom,id=rng0
> -device virtio-rng-device,rng=rng0 -show-cursor -monitor null -device
> loader,file=/home/palmer/work/linux/linux/arch/riscv/boot/Image,addr=
> 0x80200000  -nographic -machine virt  -m 512 -serial mon:stdio
> -serial null -kernel /home/palmer/work/linux/openembedded-
> riscv64/build/tmp-glibc/deploy/images/qemuriscv64/fw_jump.elf -append
> 'root=/dev/vda rw highres=off  console=ttyS0 mem=512M ip=dhcp
> earlycon '
> 
> which gives me some early stuff and then some non-early stuff
> 
> _e_[    0.407579] printk: console [ttyS0] disabled
> _e_[    0.409205] 10000000.uart: ttyS0 at MMIO 0x10000000 (irq = 10,
> base_baud = 230400) is a 16550A
> [    0.410720] printk: console [ttyS0] enabled
> _e_[    0.410720] printk: console [ttyS0] enabled
> [    0.411391] printk: bootconsole [ns16550a0] disabled
> _e_[    0.411391] printk: bootconsole [ns16550a0] disabled
> [    0.420664] [drm] radeon kernel modesetting enabled.
> [    0.428086] random: fast init done
> [    0.429331] random: crng init done
> [    0.440678] loop: module loaded
> [    0.447607] virtio_blk virtio1: [vda] 262830 512-byte logical
> blocks (135 MB/128 MiB)
> [    0.469483] libphy: Fixed MDIO Bus: probed
> 
> If you don't have something like "/chosen/stdout-path = &uart0;" in
> your device 
> tree, then that's probably the issue.  Here's where it's set in
> Christoph's 
> k210:
> 
>     
> http://git.infradead.org/users/hch/riscv.git/blob/f10e64873eafc68516b8884c06b9290b9887633b:/arch/riscv/boot/dts/kendryte/kd210.dts#l20
> 
> but we don't set it for the HiFive Unleashed.  I'd call that a bug,
> something 
> like this
> 
> diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> index 93d68cbd64fe..6d0ec76d93fe 100644
> --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> @@ -13,6 +13,7 @@
>         compatible = "sifive,hifive-unleashed-a00", "sifive,fu540-
> c000";
>  
>         chosen {
> +               stdout-path = &uart0;
>         };
>  
>         cpus {
> 
> should fix it.  LMK if I've misunderstood something.
> 

OpenSBI already adds this node to DT for U-Boot serial console.
I have tested that just adding "earlycon" to the commandline works as
long as you are using OpenSBI and SERIAL_EARLYCON is enabled.

If this entry can be added to dt residing in kernel, we can remove the
code that adds the "stdout-path" from OpenSBI.

> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
