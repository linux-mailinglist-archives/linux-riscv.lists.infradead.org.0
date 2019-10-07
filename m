Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA64CCE93F
	for <lists+linux-riscv@lfdr.de>; Mon,  7 Oct 2019 18:31:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lmh+PI5js6oaLuxKfRcAKEShJMXRAJHrFyGxo1Zaagk=; b=VC1UL0MUWNpvwE
	GzSZb/uG+t3TKhLhSi814D2TJp3ScdQagsx+lvUvvlMpuqoDiwwTrsPMKpLVzCYSs5IIoQtdNMW2T
	QEl1QM3cfW6g+YnDIFUyS8IWjY0xeyHXQ3UOs+r28g1/CRhKXfV/3k5A3oQC7LOk9BGcUG11B9kh8
	87o8ENRK+I2CP1f0KSbHWzmtdZ9zmn3+QAjhLKluVo9SBZGk3NVDvuME+aDdlz29+gK40QCaaB76x
	jB6zr3y70mdFAsy8YKSQcgplFg9o0KqM1GseFcOeskGNG3Iv2c2OMcAMl3QtV/tAQ/8kajsezqY/i
	6vaKPu38jTQbWl6nrumA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHVub-0006G7-Ei; Mon, 07 Oct 2019 16:31:05 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHVuY-0006FF-3D
 for linux-riscv@lists.infradead.org; Mon, 07 Oct 2019 16:31:03 +0000
Received: by mail-io1-xd42.google.com with SMTP id c25so29895520iot.12
 for <linux-riscv@lists.infradead.org>; Mon, 07 Oct 2019 09:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=UMUq0E3/yM6gzt+2eUBeAxMv0c8zmA9olT58MxNzCf4=;
 b=TqBUntmK2QBZxPdl52tmQ1CH3bubuXA3aGv/7uJurB+oOFTrLd0+OMsPYlOtAJVxEe
 ogaV8bF+iofd4SQogXiN6BHm3mqpl16VmHLga2A8t+smqY+S6JF2RJNntJV92/KkV5VT
 ch6UVRZ/IhWuo2X4uJhW9gm2GJ6IjstIBRLWVMlRAu6dIiefTvxBWI1Bae+Zq0hin5QL
 aiKOVxZt1ANCnkjth9NxrFAJAaUnfABOAOqBXv+gp8FY1qyLv0spJReqrFNACN4HHaku
 87DtigPQlxUKBvKH589Nwq1htOEiy8HFoFrygHKS8Hbgko1LD2yqw3REtjhKAUChJb0f
 r8QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=UMUq0E3/yM6gzt+2eUBeAxMv0c8zmA9olT58MxNzCf4=;
 b=RYzHqJVTe49zQNAiJX+sTaUTTTjdiFHhm9Ho5srDeq9T0H5EvNAImeucLoEuCcdgna
 IHQOjqPJAr4cX+c1JAnBM8mjLu7hKAD/ykMf+Gj0Ev6323BilUeAOuPc/vIVizSKuAFL
 UVpOTOBEsT5tahjImpoUy0KYYjAJJ3jK1LSuPQ5TxtNYyuM1dqj/o2eu+5Gmu/I7G4sj
 1nEnz+pUZJBZtKVzP78NT3t7MCONh9RjqKsKn01pXbQ48udsj+n4k/bUH/KW+LlX0aLc
 ItFoKosxfleBRlXXTGdmriJFHMha6VNUsZ7qjMbVAgaZHLm9VC1yRFttGbtIvwp82two
 Olfg==
X-Gm-Message-State: APjAAAXWARkU/ne7unwEirpBuYWRiZVZ9z+r/fm2jlmWPW4lhM1aIuO7
 xD+/LkODJ7IR3fbHRhdIDgLlAg==
X-Google-Smtp-Source: APXvYqyIj50zi9T4D7DSBrj4lwQDXM2+L6ujaji4sPoloVTJdqqvpCSohRbq3EGKz1CJAvFsfAjowQ==
X-Received: by 2002:a02:7044:: with SMTP id f65mr13349434jac.37.1570465859146; 
 Mon, 07 Oct 2019 09:30:59 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 t4sm6535770iln.82.2019.10.07.09.30.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 09:30:58 -0700 (PDT)
Date: Mon, 7 Oct 2019 09:30:57 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 4/4] riscv: remove the switch statement in do_trap_break()
In-Reply-To: <20191007161050.GA20596@infradead.org>
Message-ID: <alpine.DEB.2.21.9999.1910070930270.10936@viisi.sifive.com>
References: <1569199517-5884-1-git-send-email-vincent.chen@sifive.com>
 <1569199517-5884-5-git-send-email-vincent.chen@sifive.com>
 <20190927224711.GI4700@infradead.org>
 <alpine.DEB.2.21.9999.1910070906570.10936@viisi.sifive.com>
 <20191007161050.GA20596@infradead.org>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_093102_197889_2C6072B7 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org,
 palmer@sifive.com, linux-kernel@vger.kernel.org, aou@eecs.berkeley.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 7 Oct 2019, Christoph Hellwig wrote:

> On Mon, Oct 07, 2019 at 09:08:23AM -0700, Paul Walmsley wrote:
> >  		force_sig_fault(SIGTRAP, TRAP_BRKPT,
> >  				(void __user *)(regs->sepc));
> 
> No nee for the extra braces, which also means it all fits onto a single
> line.  

Good point, will drop the extra parens and remove the braces.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
