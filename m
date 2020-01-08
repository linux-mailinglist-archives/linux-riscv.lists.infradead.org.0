Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C6E133D60
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Jan 2020 09:41:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:In-Reply-To:Date:References:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DgaOFHZLgjwNezzJXd7JqM2/8SEwUjSQ8f2FI/3fKR0=; b=ErFD3PHoG0aaJiJDT6igk+8xY
	fKafCa1Tx6QPcbB6ZwN9of5IjPGYGSEl0t1OmN2ydC9KVnYlJEbeidj2nEL/V+bCV7J51489UJRJO
	mpn8ISzymwat7quyL1VAnpCRKL9/6C/4IyzI2IpVSlI5Brh6/+ysMP2GQmIJzQ1G9i7Ok+tCd/Pdu
	4Yscz3dBW/ZttNWy+5Wf/HSnnJmdtCHop0s9PIj/7oubplJxKVrXhn4HPWbM1OZs+dTLmgMpVFV7Y
	r8KlJHKiZL5HeoxBXJ13ipOaPCOQ2Hqnr6psyGR8S70X2tPp3+ccFWjaUumtBoueVtDu94RhAAnyw
	8MSwIFzbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip6tr-00052i-RT; Wed, 08 Jan 2020 08:41:11 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip6to-00051b-LR
 for linux-riscv@lists.infradead.org; Wed, 08 Jan 2020 08:41:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B6907ACE3;
 Wed,  8 Jan 2020 08:40:59 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Greentime Hu <greentime.hu@sifive.com>
Subject: Re: [PATCH v2] riscv: to make sure the cores in .Lsecondary_park
References: <20200108024035.17524-1-greentime.hu@sifive.com>
X-Yow: I will invent "TIDY BOWL"...
Date: Wed, 08 Jan 2020 09:40:58 +0100
In-Reply-To: <20200108024035.17524-1-greentime.hu@sifive.com> (Greentime Hu's
 message of "Wed, 8 Jan 2020 10:40:35 +0800")
Message-ID: <mvmk162z6g5.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_004108_849966_A18B6D38 
X-CRM114-Status: UNSURE (   6.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-kernel@vger.kernel.org, palmer@dabbelt.com, green.hu@gmail.com,
 paul.walmsley@sifive.com, greentime@kernel.org,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The subject is missing a verb.

riscv: make sure the cores stay looping in .Lsecondary_park

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

