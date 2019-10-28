Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0ABCE7718
	for <lists+linux-riscv@lfdr.de>; Mon, 28 Oct 2019 17:57:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5t2+hPpD7stkYnzbDQVoAH2j5B+9idIRLlSV9TaNXkQ=; b=g/rTd4zFhLIDTB
	GHeSBsPaaRkh+30zGvSuzyc+O/koV5GKt19elUj7nMB6qy+uiOM3KjBlb9nyVGmDvzFXqbWmxXefy
	9SsgsT5CSHtIiv5EFXiMA9gCKAqz/qvhqTI5TMG89GM8Ejs2ydALR7sFcMIkF/wfbYyRqr2I59TST
	+ZUcV3sdJnVKzW+JpgmiT6RU1Iw1xIj17tPLDmcn/KMN1kGTUb2nqvbiJ2NcKPYeFH+rrlAu7g07/
	RRA06CJEwyF68Vw/qD+ek/PuDhRZW6CvQqCIpwSwMIgyhTnVi1b0PyLnJw5Wcx1nRldhk3XMOa6lA
	QRqnSJYkqP8lNCVmuwvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP8Km-0008Pa-UK; Mon, 28 Oct 2019 16:57:36 +0000
Received: from ikhexhub02.ex10.biz ([178.170.125.77] helo=smtp.ex10.biz)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP8Ki-0008Ok-Ke
 for linux-riscv@lists.infradead.org; Mon, 28 Oct 2019 16:57:35 +0000
Received: from ex13mbxc01n01.ikhex.ikoula.com (178.170.74.66) by
 ikhexhub02.ikhex.ikoula.com (178.170.125.77) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 28 Oct 2019 17:57:21 +0100
Received: from ex13mbxc01n01.ikhex.ikoula.com (2002:b2aa:4a42::b2aa:4a42) by
 ex13mbxc01n01.ikhex.ikoula.com (2002:b2aa:4a42::b2aa:4a42) with Microsoft
 SMTP Server (TLS) id 15.0.1473.3; Mon, 28 Oct 2019 17:57:21 +0100
Received: from ex13mbxc01n01.ikhex.ikoula.com ([fe80::7cfa:8f3a:5d4b:2d27]) by
 ex13mbxc01n01.ikhex.ikoula.com ([fe80::7cfa:8f3a:5d4b:2d27%15]) with
 mapi id 15.00.1473.003; Mon, 28 Oct 2019 17:57:21 +0100
From: Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>
To: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: 32-bits offset issue preventing module to load, 
Thread-Topic: 32-bits offset issue preventing module to load, 
Thread-Index: AQHVja4sQJZHeq3tHke1MuZ4opcUhA==
Date: Mon, 28 Oct 2019 16:57:20 +0000
Message-ID: <1572281840733.3517@european-processor-initiative.eu>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [178.170.125.114]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_095732_816105_F672F497 
X-CRM114-Status: UNSURE (   4.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.0 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.170.125.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 3.0 HEXHASH_WORD           Multiple instances of word + hexadecimal hash
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "romain@dolbeau.org" <romain@dolbeau.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello,

I have a Fedora RISC-V running fine in QEMU, using packaged kernel "5.4.0-0.rc4.git0.300.1.riscv64.fc32.riscv64".
Some modules won't load, such as openvswitch:

#####
$ sudo modprobe openvswitch ; dmesg | tail -1
modprobe: ERROR: could not insert 'openvswitch': Invalid argument
[  227.833317] openvswitch: target ffffffe0000d1fd8 can not be addressed by the 32-bit offset from PC = 00000000bcd11221
#####

The message is explicit, a 32-bits offset is not enough to access the data @ 0xffffffe0000d1fd8 from 0x00000000bcd11221. The relevant (I think) part of the System.map is:

#####
/usr/src/kernels/5.4.0-0.rc4.git0.300.1.riscv64.fc32.riscv64/System.map:ffffffe0000d1fd8 D __init_end
/usr/src/kernels/5.4.0-0.rc4.git0.300.1.riscv64.fc32.riscv64/System.map:ffffffe0000d1fd8 D __per_cpu_end
/usr/src/kernels/5.4.0-0.rc4.git0.300.1.riscv64.fc32.riscv64/System.map:ffffffe0000d1fd8 T _stext
/usr/src/kernels/5.4.0-0.rc4.git0.300.1.riscv64.fc32.riscv64/System.map:ffffffe0000d1fd8 T _text
/usr/src/kernels/5.4.0-0.rc4.git0.300.1.riscv64.fc32.riscv64/System.map:ffffffe0000d1fd8 t trace_initcall_finish_cb
#####

As far as I can tell, the issue lies with the fact that the offending modules are using per-cpu data, an uncommon occurrence in modules (according to 'grep' ;-) ). I have a small reproducer that fails in the same way on my QEMU machine. It's small enough I can put it inline at the end of this mail (sometimes attachment gets stripped...). I get the same error in dmesg when trying to load it:

[  585.528200] toto: target ffffffe0000d1fd8 can not be addressed by the 32-bit offset from PC = 00000000465adc9c

The test code works just fine on x86-64, I couldn't try another architecture.

Cordially,

Romain Dolbeau

##### toto.c
#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>

#include <linux/kmod.h>


MODULE_LICENSE("GPL");
MODULE_AUTHOR("None will accept the blame");
MODULE_DESCRIPTION("Bug reproducer");
MODULE_VERSION("0.01");

static DEFINE_PER_CPU(uint64_t[2], test_data);

static int __init toto_init(void) {
        int i;
        printk(KERN_INFO "Hello, World!\n");
        for_each_possible_cpu(i) {
            uint64_t *data = per_cpu(test_data, i);
            printk(KERN_INFO "data for %d is %p\n", i, data);
        }
        return 0;
}

static void __exit toto_exit(void) {
         printk(KERN_INFO "Goodbye, World!\n");
}

module_init(toto_init);
module_exit(toto_exit);
##### Makefile
obj-m += toto.o

all:
        make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
        make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

test:
        sudo insmod toto.ko && sudo rmmod toto || true
        sudo dmesg | tail -5
#####

-- 
Romain Dolbeau





_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
