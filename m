Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA48BE04B6
	for <lists+linux-riscv@lfdr.de>; Tue, 22 Oct 2019 15:18:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Content-ID:MIME-Version
	:Subject:To:References:In-Reply-To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GXIaQrw87UK+Vo70MY+CNK+DOYmczuYgbbZBHrhGEUM=; b=RnMgaPq/8TKaEa
	WAp8YwD6+MnxGdqzmf9PGigN8/8jlqyfy5PddTfF3OG0hloMgR6eAAzQmRM0IORA4nSPZvQq1rUXm
	KzOBk7IBQ3zASGMjdIh2DH35ReCODKPE/S0kzCbN8JiUafeicG6eKCnl+0BZdgmpA49baxNoVH1/o
	+AURcjzT8ZHrYrLSO9EqOlbBvm5F0srlRhLR75DVVd3H9so+sL1nVOXp6kx846oD5dHy2jces4qc7
	o2pVOSByGXjrgknrR3Dyg8cNvUp+VhPGJghv/PeyXgdCFG3H1EuN9nxEvXSc6PJT98GSfadTMSZFM
	VnaIzeIXRAm6sPm0KhuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMu2s-0007Uv-6t; Tue, 22 Oct 2019 13:17:54 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMu2o-0007U7-Jw
 for linux-riscv@lists.infradead.org; Tue, 22 Oct 2019 13:17:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571750266;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=efljvJ2w2MdjEO93WQa9AoZJv0D+nIyDWGfcRPbJ1Lo=;
 b=I46S3I2Kg8s9JJT5urqKeI/DLMb1CaIVpy4w1dn6sabF8+A6ey4wpiJAcva95x1QDPqORq
 WCiSDzKeEtp3/0m2/YqCCDUPKAmH5pfJ50X5OnLVmLkwL7EzRlbHWnjozhVltKa4Y7RXr2
 F5fTLGerNX6moC9ki7HD8uPJ2TqRBIE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-330-HLyXQWEwMU2neTojI_a1xg-1; Tue, 22 Oct 2019 09:17:41 -0400
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 38012800D4E;
 Tue, 22 Oct 2019 13:17:39 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-121-40.rdu2.redhat.com
 [10.10.121.40])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CAEDD1001B20;
 Tue, 22 Oct 2019 13:17:36 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <11434.1571740533@warthog.procyon.org.uk>
References: <11434.1571740533@warthog.procyon.org.uk>
 <CAHk-=wjFozfjV34_qy3_Z155uz_Z7qFVfE8h=_9ceGU-SVk9hA@mail.gmail.com>
 <000000000000830fe50595115344@google.com>
 <00000000000071e2fc05951229ad@google.com>
To: Mimi Zohar <zohar@linux.ibm.com>
Subject: Re: WARNING: refcount bug in find_key_to_update
MIME-Version: 1.0
Content-ID: <24776.1571750256.1@warthog.procyon.org.uk>
Date: Tue, 22 Oct 2019 14:17:36 +0100
Message-ID: <24777.1571750256@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: HLyXQWEwMU2neTojI_a1xg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_061750_726579_82E31A37 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aou@eecs.berkeley.edu,
 syzbot <syzbot+6455648abc28dbdd1e7f@syzkaller.appspotmail.com>,
 Palmer Dabbelt <palmer@sifive.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 James Morris James Morris <jmorris@namei.org>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dhowells@redhat.com,
 LSM List <linux-security-module@vger.kernel.org>, keyrings@vger.kernel.org,
 linux-riscv@lists.infradead.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Okay, I managed to catch a backtrace for this line:

	encrypted_key: key user:syz not found (-126)

looking like:

	CPU: 0 PID: 8878 Comm: syz-executor.0 Not tainted 5.4.0-rc3+ #0
	Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
	Call Trace:
	 dump_stack+0x172/0x1f0
	 request_master_key.isra.0.cold+0x62/0xc3
	 encrypted_read+0x221/0x830
	 ? get_derived_key+0xf0/0xf0
	 ? keyctl_read_key+0x1c2/0x2b0
	 ? __kasan_check_write+0x14/0x20
	 ? down_read+0x109/0x430
	 ? security_key_permission+0x8d/0xc0
	 ? down_read_killable+0x490/0x490
	 ? key_task_permission+0x1b5/0x3a0
	 keyctl_read_key+0x231/0x2b0
	 __x64_sys_keyctl+0x171/0x470
	 do_syscall_64+0xfa/0x760
	entry_SYSCALL_64_after_hwframe+0x49/0xbe

So something somewhere is calling keyctl_read() in userspace on the encrypted
key and that is then referring across to the user key added.

Also, the encrypted key is being given the following payload:

	ENCRYPTED: 'new default user:syz 04096'

in at least one of the cases that encrypted_update() being called.

David


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
