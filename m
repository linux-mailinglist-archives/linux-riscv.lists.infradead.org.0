Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E646AB434F
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Sep 2019 23:38:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=K2yZd0I3p9CXzwJ8COXY94VH5NhUp8j2ouKnWH8WPKk=; b=HIIGF5OQ54ybTJ9GcDVhYbtho
	5AJevnSD6gAWsBkQUlo6/C+Fgh1i8U02OGcdChMIjFiIp2QS74fLrom6UV/vX6sqcnph2Ccw5DiXA
	vP3iCMYgTfTGZLBeofPQFIAc2FoHQ21bQQBsu2w2OKx34YIXiAoGbuYjZfKLu07Qxmo571Pd07s79
	Ne7ZKG2wiz7tzEpKgjs/Xsal2iZzytjaUK4fIIoxaDtsxtoZ6YrNFkHz73jhVBFpE0Z2BOhLiydXe
	okvBZkVElbNUHn9UjsZhHdfMJMn6TnvLzF8WsklZ6Dr14XhhfAv6bNvfdLoiJ3yiPYsghM6DKI0CR
	uSGwgKMUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9yhp-0005zS-Cy; Mon, 16 Sep 2019 21:38:45 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9yhl-0005z9-ML
 for linux-riscv@lists.infradead.org; Mon, 16 Sep 2019 21:38:43 +0000
Received: by mail-pf1-x442.google.com with SMTP id 205so733871pfw.2
 for <linux-riscv@lists.infradead.org>; Mon, 16 Sep 2019 14:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=ussGV4sAsw+qdSXVhtVYUo/8kyRAo8F9PtEFDW04fvs=;
 b=ehEiIeAU6vrWvGRFxnPUj6OUoZMY60XI9IEGjHP+firBnz43tx3q307LVbyQXN4dYb
 c4ccBMhe0wnVpAGWQvIGQ/uGI1uwGq3XhwWkVshaWEAvc0smTR5tAjQDztxorEHwdTDL
 /rfvDBtHRBh88OPPTJE+v4YpNhHCcCYc+1lPJ1152ykjhOH0+P6oHSW0q1LbA1oL1OWy
 2rSsdWLn51Z4A2JyKuKStVZbFD5ZyKoyTkwxYOoQBEH54zcodvvu9fk/v321NTNLn1ha
 e1jq3fOkv1If+qMp75PiaJ25551lrZNHmDnSvJjLwWMsnNNZt/AcZHJEkg/d8mvgKT0g
 Y22w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=ussGV4sAsw+qdSXVhtVYUo/8kyRAo8F9PtEFDW04fvs=;
 b=NxAW/1WGOO9HSk6Gamv27DY1fBkTDk1/Ru2gbM64NlhDXZ0tFOE7paROrgKfT8ZMoq
 k9OwIKmzeCs/AqsB0GTilefIebvjdqTU1MjXPW7hY7fZ+kcDc6MDcPQv0KomWSqQg8zA
 1+Slb7D70KhFcYZukaWihhlA5hgZdbGGCohi97ZmTuczj0PCobXlFQ6Tw/5mazUFslQO
 TmS4Z19MYIRzgstxnsrIPa9eej6uVkJjJRqHK0eVAdDvjKoLug+J1Tul6LdV9aFlgWUZ
 1ycWSibareGSOS/gzcpAU+FilFHt3ZSLaNdipwG71guWNgMH7NU7q1QuxT/c7effX0IL
 ci+A==
X-Gm-Message-State: APjAAAU6ghDvvnwBr5hH3thCkbcN1zeqNi1jhV2MN2VI42+yBURpLyfs
 W+ZfxCcIGM4VrXlnwMlJ1jnu1g==
X-Google-Smtp-Source: APXvYqyQF4otQXzAnqHHg9QWpeu/7pnzO7LWZJg0Kp6EIFIRsfSWANkypqS5FNNikxA657tbrU+NoA==
X-Received: by 2002:a62:1b0c:: with SMTP id b12mr529676pfb.17.1568669920805;
 Mon, 16 Sep 2019 14:38:40 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id k31sm129129pjb.14.2019.09.16.14.38.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 14:38:39 -0700 (PDT)
Date: Mon, 16 Sep 2019 14:38:39 -0700 (PDT)
X-Google-Original-Date: Mon, 16 Sep 2019 14:38:36 PDT (-0700)
Subject: Re: [PATCH] serial/sifive: select SERIAL_EARLYCON
In-Reply-To: <87ftkwdo85.fsf@igel.home>
From: Palmer Dabbelt <palmer@sifive.com>
To: schwab@suse.de
Message-ID: <mhng-5091669f-461c-4e62-a71c-e16957801fad@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_143841_795531_6832873A 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: Greg KH <gregkh@linuxfoundation.org>, jslaby@suse.com,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 16 Sep 2019 12:40:10 PDT (-0700), schwab@suse.de wrote:
> On Sep 16 2019, Palmer Dabbelt <palmer@sifive.com> wrote:
>
>> On Sun, 15 Sep 2019 23:42:53 PDT (-0700), Christoph Hellwig wrote:
>>> On Fri, Sep 13, 2019 at 01:40:27PM -0700, Palmer Dabbelt wrote:
>>>> OpenEmbedded passes "earlycon=sbi", which I can find in the doumentation.
>>>> I can't find anything about just "earlycon".  I've sent a patch adding sbi
>>>> to the list of earlycon arguments.
>>>
>>> earlycon without arguments is documented, although just for ARM64.
>>> I can send a patch to update it to properly cover all DT platforms
>>> in addition.
>>
>> Thanks.  I've kind of lost track of the thread, but assuming that does the
>> "automatically pick an earlycon" stuff then that's probably what we should
>> be using in the distros.
>
> Except that it doesn't work.

Sorry, once again I've lost track of the thread.

The code looks generic.  The device tree in arch/riscv for the HiFive Unleashed 
doesn't have a stdout-path set, which if I understand correctly is used by the 
automatic earlycon stuff to pick a console.  I gave this a quick test on QEMU, 
which finds a 16550 earlycon for me.  I use openembedded's qemuriscv64 target, 
the following diff to make sure I'm getting an earlycon

diff --git a/drivers/tty/serial/8250/8250_early.c b/drivers/tty/serial/8250/8250_early.c
index 5cd8c36c8fcc..61290714bbcb 100644
--- a/drivers/tty/serial/8250/8250_early.c
+++ b/drivers/tty/serial/8250/8250_early.c
@@ -106,6 +106,7 @@ static void early_serial8250_write(struct console *console,
        struct earlycon_device *device = console->data;
        struct uart_port *port = &device->port;

+       uart_console_write(port, "_e_", 3, serial_putc);
        uart_console_write(port, s, count, serial_putc);
 }

and run this command line

    /home/palmer/work/linux/openembedded-riscv64/build/tmp-glibc/work/x86_64-linux/qemu-helper-native/1.0-r1/recipe-sysroot-native/usr/bin/qemu-system-riscv64 -device virtio-net-device,netdev=net0,mac=52:54:00:12:35:02 -netdev user,id=net0,hostfwd=tcp::2222-:22,hostfwd=tcp::2323-:23,tftp=/home/palmer/work/linux/openembedded-riscv64/build/tmp-glibc/deploy/images/qemuriscv64 -drive id=disk0,file=/home/palmer/work/linux/openembedded-riscv64/build/tmp-glibc/deploy/images/qemuriscv64/core-image-full-cmdline-qemuriscv64-20190711162644.rootfs.ext4,if=none,format=raw -device virtio-blk-device,drive=disk0 -object rng-random,filename=/dev/urandom,id=rng0 -device virtio-rng-device,rng=rng0 -show-cursor -monitor null -device loader,file=/home/palmer/work/linux/linux/arch/riscv/boot/Image,addr=0x80200000  -nographic -machine virt  -m 512 -serial mon:stdio -serial null -kernel /home/palmer/work/linux/openembedded-riscv64/build/tmp-glibc/deploy/images/qemuriscv64/fw_jump.elf -append 'root=/dev/vda rw highres=off  console=ttyS0 mem=512M ip=dhcp earlycon '

which gives me some early stuff and then some non-early stuff

_e_[    0.407579] printk: console [ttyS0] disabled
_e_[    0.409205] 10000000.uart: ttyS0 at MMIO 0x10000000 (irq = 10, base_baud = 230400) is a 16550A
[    0.410720] printk: console [ttyS0] enabled
_e_[    0.410720] printk: console [ttyS0] enabled
[    0.411391] printk: bootconsole [ns16550a0] disabled
_e_[    0.411391] printk: bootconsole [ns16550a0] disabled
[    0.420664] [drm] radeon kernel modesetting enabled.
[    0.428086] random: fast init done
[    0.429331] random: crng init done
[    0.440678] loop: module loaded
[    0.447607] virtio_blk virtio1: [vda] 262830 512-byte logical blocks (135 MB/128 MiB)
[    0.469483] libphy: Fixed MDIO Bus: probed

If you don't have something like "/chosen/stdout-path = &uart0;" in your device 
tree, then that's probably the issue.  Here's where it's set in Christoph's 
k210:

    http://git.infradead.org/users/hch/riscv.git/blob/f10e64873eafc68516b8884c06b9290b9887633b:/arch/riscv/boot/dts/kendryte/kd210.dts#l20

but we don't set it for the HiFive Unleashed.  I'd call that a bug, something 
like this

diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 93d68cbd64fe..6d0ec76d93fe 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -13,6 +13,7 @@
        compatible = "sifive,hifive-unleashed-a00", "sifive,fu540-c000";
 
        chosen {
+               stdout-path = &uart0;
        };
 
        cpus {

should fix it.  LMK if I've misunderstood something.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
