Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E5B151FF7
	for <lists+linux-riscv@lfdr.de>; Tue,  4 Feb 2020 18:48:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tgf1/22VkREtGiCk2//xuBNj9GeBO/7DtIychGnWDgc=; b=kdQtHFSPjuof3y
	eYgP7CfnCIMm4+Bh37dfx2TSwMKAVTZe8CTXJn5Yq0Nu91SSsPGBuP9vrjxI9aPjJbu1md2Tco6I6
	PWuCsoAyabXMonm9Z7Bq1qA+f+Mlcwuvc26jNndksAcL+k9wmG2/LsVEfp5whSFUKsc3sOVBv1w+K
	E/a2HF7OsP2rFmzIvf89ySJJilxpvXfqdOaW8jHzNs8WY1EA4JRD677JEB0D7H9ha2BI5XUEdIkv2
	CrbGbcol4dO7NkLQ7/Z0oA2+jeeJ8DFXdx3odEgMm3wcbqI9ZKiZ39x+EFX2h5+7OxSO4kRSy4tbk
	VLgRHnyrkORn+YMLeJ5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz2Jg-0004SN-9N; Tue, 04 Feb 2020 17:48:52 +0000
Received: from smtp2.ex10.biz ([178.170.74.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz2Jb-0004R2-VU
 for linux-riscv@lists.infradead.org; Tue, 04 Feb 2020 17:48:49 +0000
Received: from 82-64-60-106.subs.proxad.net ([82.64.60.106]:49996
 helo=[192.168.0.45])
 by smtp2.ex10.biz with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
 (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <romain.dolbeau@european-processor-initiative.eu>)
 id 1iz2JN-0000JL-2s; Tue, 04 Feb 2020 18:48:33 +0100
Subject: Re: Error on loading some network Kernel modules
To: Anup Patel <anup@brainfault.org>, Vincent Chen <vincent.chen@sifive.com>
References: <CADnnUqfhxWN=cyyr0QQyKrrO13LuDFS9NTqOLwm10CnwB3sDXA@mail.gmail.com>
 <alpine.DEB.2.21.999.2001300259070.23963@utopia.booyaka.com>
 <CAEn-LToMfm=G80TmGQZefpmKhKvpGy_=XOoBLGU0a_77ahY+_w@mail.gmail.com>
 <20200131201118.GA4121429@aurel32.net>
 <CAAhSdy03C==7PmuXE441BtDJH8H07rOH-u+-_sZJG70tbTrJcA@mail.gmail.com>
 <d868acf5-7242-93dc-0051-f97e64dc4387@ghiti.fr>
 <33c9a276-6212-115c-c7c9-e62244f13c76@european-processor-initiative.eu>
 <CABvJ_xiWDZfO6fOd4Roiy-yaUVFKrGEcBDBSWsvj2TKGGMjy0g@mail.gmail.com>
 <CA+ZOyaj16M5q-g4wZ60MuUs4q1AfCB48wd+AN4TTJNu8K4NZRA@mail.gmail.com>
 <68bb87cb-50d7-5e85-37f4-ad2cc44865f1@ghiti.fr>
 <CA+ZOyahEPtuNqgSUHVcZpZp3WP3oX4jFOiqJvO827ye4+1DT8Q@mail.gmail.com>
 <c12ed63e-c717-9fa0-7a6c-74d6d4a83a04@ghiti.fr>
 <CABvJ_xiBVQjfJfZU0Dfp0fc9n_zAoc=DSHPFuDMKu4k5n0qJtQ@mail.gmail.com>
 <CAAhSdy2gEK++MtyV9=o9r_-6CkaWMsQ0YZwB-TAkCCe3B4qTFg@mail.gmail.com>
From: Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>
Message-ID: <e470a137-f910-7e5e-998d-4b3505f69f1b@european-processor-initiative.eu>
Date: Tue, 4 Feb 2020 18:48:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAAhSdy2gEK++MtyV9=o9r_-6CkaWMsQ0YZwB-TAkCCe3B4qTFg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_094848_160839_80210038 
X-CRM114-Status: UNSURE (   6.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.170.74.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Carlos Eduardo de Paula <me@carlosedp.com>, Alexandre Ghiti <alex@ghiti.fr>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Paul Walmsley <paul@pwsan.com>, Zong Li <zongbox@gmail.com>,
 Zong Li <zong.li@sifive.com>, linux-riscv <linux-riscv@lists.infradead.org>,
 Aurelien Jarno <aurelien@aurel32.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020-02-04 12:30, Anup Patel wrote:
> for such modules just
> convert these percpu symbols into dynamic percpu variables.

Indeed you are right for my case; converting from static to dynamic 
percpu variable solves the problem in my out-of-tree case of interest, 
thanks!

Cordially,

-- 
Romain Dolbeau

