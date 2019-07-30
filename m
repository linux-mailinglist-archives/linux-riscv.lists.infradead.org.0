Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6567A008
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 06:27:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MLTEVP4DOlsuAUR+vGyhAzKG+PEKOyf5WLwkKxbhtiY=; b=JypFu7dlj+CumZpL1dxBCuROJ
	BgKItZqhg0lonw+8xdamLF7YgXdaEwTITDFxi2Fap0tP2Xbunz/LP5YuX0hphrOTz3rGwLokDGjpi
	eBz4ZQh85H7fV831EvwMDJY9ucSTKzcmU9vjRCJdCYNT822W8MNCFp8cAJA888ZwWTPhM6HWbnjSB
	X99XgXyOsjo015Hg87dpblvCdpaTGPqg+oBgNh1+f+rQ7Ae/RhsNuUO0kJO6L2gXuXcNIvXAjxdU9
	YoG8Dw4UYmuG425a+MUjPsLwjKbwboQ/3wojBDWRLh5iTQkfcBidOFJ+J/vGPfYOOc6+CUsjIaCJ0
	tHoRFC9sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsJjm-0005Jo-9H; Tue, 30 Jul 2019 04:27:46 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsJji-0005J4-Re
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 04:27:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564460863; x=1595996863;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=K5Jiu05QHL4Y9rhJjdIPe6ief17f/gVCnK1Ev+xph0k=;
 b=ANQz3Xa878m16rr/ahu7gWNJ9uQZHoRMrnSiUegoBxwsDJ2c6gKT5Fe4
 cWINj2IFGO0NZ63YdhEUMwZuw5jV/iaDkxZVnsGc+3Sk4CzvcJBQSlVi3
 jXOygF4J96BfPmdtIeYToNfpJgyxSqd3Hmm3B4rDXOvBnQfyGk/vWbJc6
 lzT6xmgzvEsOEIzAzQQtI2NS/gElbaZUfmB4oPufeylgX6Qod5L6vTkJx
 wrwTxLrPFm/AIGoq9iDmg8wPT9pEkmrXGX1gYcKWGa2cO5JCRl9JKk1ud
 vrIIzaRT02jKn3Mh8yGqXw3oWes8dBlNwpDKu0uzcr0kB4IJh08i57EJY Q==;
IronPort-SDR: 93SgIgzKfJoGVH0Ri8Td8yT7xt6GqNmsfTYvA8UafAgRvpXADbmj8QMKhTxtqXRoPyrsJNJDdP
 ACXTtJYXMqWoua3k+8+gPaaiq7X6zwNF+dlDNNztOyMQeaMlXXoWcjVsksnFQMsAzIHF5AK3M/
 Nbh2ijVJz/y/2nrv1TvceaJdo41wgKXaJHYfXXY/iSuWcE8meEw6uTIhWC8Esjkz+1yuJ9eoyN
 Q4pU+eut//D8k9ehhk4caeFPN55wngx69RweltHFfunjeJ9L06Jsk978zSouILq5MlBeNY2tFk
 wAE=
X-IronPort-AV: E=Sophos;i="5.64,325,1559491200"; d="scan'208";a="116044230"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 30 Jul 2019 12:27:39 +0800
IronPort-SDR: PhUshZ/cv/PCPRCfJ5/CWhISDYqtvGZMj7Ofib00I4NJ2ZyMN7jSWfMWoakOScJ0bApkhjLm5P
 zVjgn/Gyt9RlLZrmYtTkZt0wumSsbn7ABYgC1q98ZpCC4xoMWq61eoZ6j4M9IWmvIhinDAaJ+k
 WGii6dD+KFPSt8HxP8RKfonpabKXdSVgxKU1mBDBr6GcA/DyGfGwYr1LbqkSmhKxGo+OTuoPxq
 ETnE0N8uRVf0t/zr4GjFyhc60kuGjFmQZVciwniiZA3KTuL4XmHyLcCNAfzWQt4etjb1nhdrQu
 zG3jktPbpjoR//GpFECrIXyG
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 29 Jul 2019 21:25:42 -0700
IronPort-SDR: f/5JBFw+hs1hoT2dt6RwE3W5beAlg41ri0PiLf7t5/2ZN1kye1hKzLyTqfGgoTN0VvJd4RqyvH
 5rRqr0DGwA+P388e+yZjSgTrDqeN04PInPWrx7cZSyRshYIVnyEpEfMI2R7NSVv+yHaAtHjtbg
 SuvIBWRpz6/fQMJXlg1RdTtnGgNMRUzJyauB+qUzAGaHnO1bDrtfiwgXs2eUUGCGuYFQckW1NK
 /yJX7mp5Yhl7Uh8G9TwlYth9YwYjMvhJa92S1gMGUY7sUuZyLS/M7YGLto0Qm0xD6URcgl1Icl
 8Bs=
Received: from unknown (HELO [10.225.104.231]) ([10.225.104.231])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Jul 2019 21:27:39 -0700
Subject: Re: Random memory corruption with v5.2
To: David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Andreas Schwab <schwab@suse.de>
References: <mvm8sshcdwc.fsf@suse.de>
 <CAEn-LTpM-0TMxkNNh6nnLH9Bnr9Zm+VFLf=z1y9sER6RXrQooQ@mail.gmail.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <34577dc8-bf12-9a31-5884-999cb4c88b85@wdc.com>
Date: Mon, 29 Jul 2019 21:27:38 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAEn-LTpM-0TMxkNNh6nnLH9Bnr9Zm+VFLf=z1y9sER6RXrQooQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_212742_958564_CA07DE1E 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 7/29/19 3:58 PM, David Abdurachmanov wrote:
> On Mon, Jul 29, 2019 at 1:51 PM Andreas Schwab <schwab@suse.de> wrote:
>>
>> Since switching to 5.2 kernels I'm seeing random crashes and
>> misbehaviors on the HiFive, for example while building gcc or glibc.
>> Perhaps missing TLB flushes?
> 
> Do you have some examples of crashes?
> 
> I am running 5.2-rc7 on a large number QEMU instances for builders,
> and I see some strange behavior, but I haven't noticed any issues
> on the board using OpenEmbedded build with the final 5.2 yet.
> 

Looking at the timestamps, these seems to be different crashes in 
different instances. Is there any particular workload you were running 
or just happens randomly if you run long enough ?

If you have complete dmesg and/or vmlinux that will help as well.

> [17983.074847] Unable to handle kernel paging request at virtual
> address 0fffffdff5e14700
> [17983.085132] Oops [#1]
> 
> [133953.710130] kernel BUG at include/linux/mm.h:1023!
> [133953.718204] Kernel BUG [#1]
> 
> [165770.567652] Unable to handle kernel NULL pointer dereference at
> virtual address 0000000000000010
> 
> [148578.912479] kernel BUG at lib/list_debug.c:51!
> [148578.917701] Kernel BUG [#1]
> 
> [163756.869949] EXT4-fs (vda2): pa 00000000e9971722: logic 512, phys.
> 2558464, len 512
> [163756.889549] EXT4-fs error (device vda2):
> ext4_mb_release_inode_pa:3837: group 78, free 0, pa_free 149
> [163757.757600] EXT4-fs (vda2): pa 0000000066b479c3: logic 32, phys.
> 2558368, len 96
> 
> sbi_trap_error: hart1: misaligned store handler failed (error -10)
> sbi_trap_error: hart1: mcause=0x0000000000000006 mtval=0x00000000000002c3
> sbi_trap_error: hart1: mepc=0xffffffe0009dc1f4 mstatus=0x0000000000000802
> sbi_trap_error: hart1: ra=0xffffffe0009dc1ee sp=0xffffffe1f3c17be0
> 
> [178876.406122] Unable to handle kernel paging request at virtual
> address 0000000000012a28
> [178876.423941] Oops [#1]
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
> 


-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
