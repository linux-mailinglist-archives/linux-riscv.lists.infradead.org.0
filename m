Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9692214FE48
	for <lists+linux-riscv@lfdr.de>; Sun,  2 Feb 2020 17:27:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YHgqMU7+pWUe+No7BAbnOHKtFkY0PQM+1LcGugshP8Q=; b=JG0zZDFeCfupF+
	0yzQtGse91yj2n6BxCNj7IpK1wKyNKU/445hrXbUYFzUPOOrf46qciJMDTf7GIOkiWxi5sA8kgvMa
	T8HjY27WxKNp4WbR/zC1AefLsyln0bJsv5lMY8OTIM722l03B//I5bB5SyeX8BCbOxMHSiwvCmn2Z
	Vg9UJMUHk29IFoijOjUzhwyk+D3A+Mq9eBJFxxVfxfS8S9x7S+Ypm5ON5eJk0ZGP/WboChEOzydqE
	/hCgJisKb5Y69zcHw9VUfNa+a9OmbukUs6Xq2oj9HxCbLKOejmR4ouznQzvrJOzIyJCt17Vli2PNb
	S8kREbisT4BrPsH40MLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyI6C-0004c3-AT; Sun, 02 Feb 2020 16:27:52 +0000
Received: from smtp3.ex10.biz ([178.170.74.46])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyI68-0004ba-Jy
 for linux-riscv@lists.infradead.org; Sun, 02 Feb 2020 16:27:50 +0000
Received: from 82-64-60-106.subs.proxad.net ([82.64.60.106]:35846
 helo=[192.168.0.45])
 by smtp3.ex10.biz with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
 (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <romain.dolbeau@european-processor-initiative.eu>)
 id 1iyI5y-00074S-2X; Sun, 02 Feb 2020 17:27:38 +0100
Subject: Re: Error on loading some network Kernel modules
To: Alex Ghiti <alex@ghiti.fr>, Anup Patel <anup@brainfault.org>,
 Aurelien Jarno <aurelien@aurel32.net>
References: <CADnnUqfhxWN=cyyr0QQyKrrO13LuDFS9NTqOLwm10CnwB3sDXA@mail.gmail.com>
 <alpine.DEB.2.21.999.2001300259070.23963@utopia.booyaka.com>
 <CAEn-LToMfm=G80TmGQZefpmKhKvpGy_=XOoBLGU0a_77ahY+_w@mail.gmail.com>
 <20200131201118.GA4121429@aurel32.net>
 <CAAhSdy03C==7PmuXE441BtDJH8H07rOH-u+-_sZJG70tbTrJcA@mail.gmail.com>
 <d868acf5-7242-93dc-0051-f97e64dc4387@ghiti.fr>
From: Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>
Message-ID: <33c9a276-6212-115c-c7c9-e62244f13c76@european-processor-initiative.eu>
Date: Sun, 2 Feb 2020 17:27:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <d868acf5-7242-93dc-0051-f97e64dc4387@ghiti.fr>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_082748_796972_7F537E52 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.170.74.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Vincent Chen <vincent.chen@sifive.com>,
 Carlos Eduardo de Paula <me@carlosedp.com>, Paul Walmsley <paul@pwsan.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020-02-01 14:59, Alex Ghiti wrote:
> Why restrict to 128M whereas we have 2GB offset available to the end of 
> the kernel ?

Isn't that 2 GiB offset to whatever the module requires in the kernel, 
rather than to the end of the kernel space?

Is there some guarantee that symbols accessible by modules are at the 
end of the kernel? If so, wouldn't the maximum offset for this patch 
still be (2 GiB - <total size of accessible symbols>)?

Cordially,

-- 
Romain Dolbeau

