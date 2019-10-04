Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD70CC29D
	for <lists+linux-riscv@lfdr.de>; Fri,  4 Oct 2019 20:26:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DQXL2Amg2QqPXeU89xpEs6bZ21UaR26BQ2XKIXwI+X4=; b=Uc5lElZMVjkty4
	T5CCW9stuAq/FlI34IKkeoyDZdj3cKXuiPRx66CqtEkrc1mOycd56m8uZOD3iGijCAJcp8sLO+ufA
	dbxlgpuhQt3pKsrBJtlNLgmL5EdJFWZQ++smIHGfP9qDBOBj4MxU5OCC/Jtm3hI+KC9cpXKFpZDih
	p/Vnc0xbIA9qHXTJV8Iwhr0EYHT0AR0qtp7DvHFz89I4Buyu1ZemOVImhnfEC6Je3f/EI7RMNqCOl
	gQgz9AqjMAEB4fHMfatK+akHjcOUrJWzN3eVqWz1646jqx6tEWgEsMmMoyYe2WYSjXy9MQVieZufc
	anr7uWCDC5dLEys9tKQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGSHn-0001ZB-S9; Fri, 04 Oct 2019 18:26:39 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGSHl-0001Ys-1q
 for linux-riscv@lists.infradead.org; Fri, 04 Oct 2019 18:26:38 +0000
Received: by mail-io1-xd43.google.com with SMTP id n197so15541310iod.9
 for <linux-riscv@lists.infradead.org>; Fri, 04 Oct 2019 11:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=t8xd02zwYHFR1ug6Lij1NLvXJ514TyN1QMbUlSxJFp0=;
 b=VwHl/+4fKaaoT18gaA2dUh9WuS55xSFNwQIk7B6CLpOS0MlU/jrzqwld7gUOK+i+0V
 HBgZMsMLNgy6AooThDGrQ6+Kj3qP89muwCvmBepqtwruQwi38NqihJ0a6BNfbmo3zS4I
 q77DTbCddQ5FaiPNELBaw3+MWJTTiWmZLObKL/0kvwcnvD6nBamAigdfsUqCW5C6d0DM
 HpDjfoACTEgMWNLe0drc1TQ68Ov+HVBBkdNks2nPqY9GTFGdwJYROmso6i6SPUVIrFUP
 6W21rrj49NcOiYjVseux4Y4HwXDYTPCUmP2k2ipY/kU93RXkj64OxkXzyaJWOGeJoql9
 z/zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=t8xd02zwYHFR1ug6Lij1NLvXJ514TyN1QMbUlSxJFp0=;
 b=h0EBeJpvHwZlj62fdZa1rPk2atq9S/P16rtZ0eT7ic6LGJUZMF4pV3ehzx8jIjXhVx
 MSV40FAb/KL9rQlMcK3Fdvn7EWCNbfhcn9i70Co/Ifmb8nOaTFC161j7Lng7vV6sR+5/
 Z6GUabpG9uhUwZbZ8F+5VBNg+Xa0AvxX9WZVSkYw6KWORwDuYZdHVxHszZdirCgVU+Lv
 f9hHRPVN627QTCXUkG/+3gi6qexO67ng7PISGGzKXAgu73mkwqASakJmcK8o7qAP8H2q
 kpMvL56UtgVqjFuhE16unwkAIm2n3kGRzlRKWQVjG68hIl2eFDNrAk9rPJAMM4yJAUvl
 GbZw==
X-Gm-Message-State: APjAAAWsNmLOy9xLmGD7eUyVzczK0hU6XVyt8Un9fq3YtJxraUCp4d7p
 AK0/tU3kwEmcD16xNqJ2a5o33A==
X-Google-Smtp-Source: APXvYqyzR0J5thuev/aaZSAW6LUCDh4I7Z/+jk8Q170nxQE+KqajfQzX0PhTAamMU6fO0fFmqLEmeA==
X-Received: by 2002:a92:4050:: with SMTP id n77mr16315409ila.219.1570213596150; 
 Fri, 04 Oct 2019 11:26:36 -0700 (PDT)
Received: from localhost (67-0-10-3.albq.qwest.net. [67.0.10.3])
 by smtp.gmail.com with ESMTPSA id 13sm2839063ilz.54.2019.10.04.11.26.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 11:26:35 -0700 (PDT)
Date: Fri, 4 Oct 2019 11:26:34 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Vincent Chen <vincent.chen@sifive.com>
Subject: Re: [PATCH 2/4] rsicv: avoid sending a SIGTRAP to a user thread
 trapped in WARN()
In-Reply-To: <1569199517-5884-3-git-send-email-vincent.chen@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1910041126220.15827@viisi.sifive.com>
References: <1569199517-5884-1-git-send-email-vincent.chen@sifive.com>
 <1569199517-5884-3-git-send-email-vincent.chen@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_112637_097171_2E18F602 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
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
Cc: linux-riscv@lists.infradead.org, palmer@sifive.com,
 linux-kernel@vger.kernel.org, aou@eecs.berkeley.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 23 Sep 2019, Vincent Chen wrote:

> On RISC-V, when the kernel runs code on behalf of a user thread, and the
> kernel executes a WARN() or WARN_ON(), the user thread will be sent
> a bogus SIGTRAP.  Fix the RISC-V kernel code to not send a SIGTRAP when
> a WARN()/WARN_ON() is executed.
> 
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>

Thanks, queued for v5.4-rc.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
