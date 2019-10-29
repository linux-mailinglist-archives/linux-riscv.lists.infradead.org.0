Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FB7E861A
	for <lists+linux-riscv@lfdr.de>; Tue, 29 Oct 2019 11:51:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bkrNMRvWwJ4wIWYMcq1v1WQaD1exaDxrNhflzz0MQVY=; b=XqxOSS0qBTizB6
	FrdhNNRuJxt4suTSWJA0TEUP1rmYzjJco7V7P2DqIng1e37SV1/9AsaCIfqJ80+1WhJvjX3Z65Q6X
	Cg7s644luOGOVwq9CykgERK/Voy359Gdy20VScMN53/aNEyllSAkrrtb7TG19tpDwEuU8/gn873P4
	UXsXy7ioAv9uE48xyhmGjHnRJWKnIxIeyXxJl9uW7si7rYauxIy4W8gC5doIPzCXIWHOpBOK4Z3lA
	TCwbJL07wrlDYhtsUBJO0oHQEQIjwjVNtwSHPFlz5EKTNaC+K+X3J129J73G72NzOyMWqNAC0gn99
	JBrkhNWpiKkdCTR5HMvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPP5k-0000ji-9d; Tue, 29 Oct 2019 10:51:12 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPP5g-0000iK-UK
 for linux-riscv@lists.infradead.org; Tue, 29 Oct 2019 10:51:10 +0000
Received: from [91.217.168.176] (helo=ohm.local)
 by hall.aurel32.net with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <aurelien@aurel32.net>)
 id 1iPP5U-0004nL-MD; Tue, 29 Oct 2019 11:50:56 +0100
Received: from aurel32 by ohm.local with local (Exim 4.92.3)
 (envelope-from <aurelien@aurel32.net>)
 id 1iPP5T-0005UP-IX; Tue, 29 Oct 2019 11:50:55 +0100
Date: Tue, 29 Oct 2019 11:50:55 +0100
From: Aurelien Jarno <aurelien@aurel32.net>
To: Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>
Subject: Re: 32-bits offset issue preventing module to load,
Message-ID: <20191029105055.GA20736@aurel32.net>
References: <1572281840733.3517@european-processor-initiative.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572281840733.3517@european-processor-initiative.eu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_035108_975304_BB817125 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.9 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [91.217.168.176 listed in zen.spamhaus.org]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:bc8:30d7:100:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Palmer Dabbelt <palmer@sifive.com>, "romain@dolbeau.org" <romain@dolbeau.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi,

On 2019-10-28 16:57, Romain Dolbeau wrote:
> Hello,
> 
> I have a Fedora RISC-V running fine in QEMU, using packaged kernel "5.4.0-0.rc4.git0.300.1.riscv64.fc32.riscv64".
> Some modules won't load, such as openvswitch:
> 
> #####
> $ sudo modprobe openvswitch ; dmesg | tail -1
> modprobe: ERROR: could not insert 'openvswitch': Invalid argument
> [  227.833317] openvswitch: target ffffffe0000d1fd8 can not be addressed by the 32-bit offset from PC = 00000000bcd11221
> #####

The same problem also happens on a 5.2.17 kernel (from the Debian
package) with the scsi_mod loading (dependency of virtio_scsi):

[  330.737763] scsi_mod: target ffffffe00007fa20 can not be addressed by the 32-bit offset from PC = 00000000e0712647

> The message is explicit, a 32-bits offset is not enough to access the data @ 0xffffffe0000d1fd8 from 0x00000000bcd11221. The relevant (I think) part of the System.map is:
> 
> #####
> /usr/src/kernels/5.4.0-0.rc4.git0.300.1.riscv64.fc32.riscv64/System.map:ffffffe0000d1fd8 D __init_end
> /usr/src/kernels/5.4.0-0.rc4.git0.300.1.riscv64.fc32.riscv64/System.map:ffffffe0000d1fd8 D __per_cpu_end
> /usr/src/kernels/5.4.0-0.rc4.git0.300.1.riscv64.fc32.riscv64/System.map:ffffffe0000d1fd8 T _stext
> /usr/src/kernels/5.4.0-0.rc4.git0.300.1.riscv64.fc32.riscv64/System.map:ffffffe0000d1fd8 T _text
> /usr/src/kernels/5.4.0-0.rc4.git0.300.1.riscv64.fc32.riscv64/System.map:ffffffe0000d1fd8 t trace_initcall_finish_cb
> #####

In my case, it points to the same symbols:

ffffffe00007fa18 D __init_end
ffffffe00007fa18 D __per_cpu_end
ffffffe00007fa18 T _stext
ffffffe00007fa18 T _text
ffffffe00007fa18 t trace_initcall_finish_cb

Aurelien

-- 
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                 http://www.aurel32.net

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
