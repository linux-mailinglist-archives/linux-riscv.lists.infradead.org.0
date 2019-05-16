Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EE720ED8
	for <lists+linux-riscv@lfdr.de>; Thu, 16 May 2019 20:42:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0T3SSE4Fg/fQHl+YQj/mJ8vcegNVMZ4crHTQ04jyzlM=; b=FOqOm8UdK5fxd6
	+tbdlqp78pg7vUdFjqKUyq5LrlgjTqSjK5xKMBreXreyjh6fYaq1NvQJS+bgahox2QTCrWeWUjuet
	HJ4FUhzRbfZU0pxUSh7hTRIa/BLuBnmhVq2lllVfE+hyXnChevpca3P2r89fia0xm94c6Al6DUTe1
	qESVTWft9VXPAns7Zg+1uYfrdmBC2jHRNAxDgopP91MOpHZoyR1391BToNvKPcdzxTmLncA3cmyra
	Uer/v5i41KvdhJ3qheQfthFIAFMiOtOiuhFlefX8WX9Jv49bOqFzP48kNEGlG5TDkhpxtCHL0KaGg
	SAB9/jhurIRjJF8Q35lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRLKD-00025E-GK; Thu, 16 May 2019 18:41:53 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRLKA-00024r-C9
 for linux-riscv@lists.infradead.org; Thu, 16 May 2019 18:41:51 +0000
Received: by mail-lf1-x143.google.com with SMTP id n22so3393297lfe.12
 for <linux-riscv@lists.infradead.org>; Thu, 16 May 2019 11:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SBJxqqJ41Gj2UgLcLdw3cvX6XyzdcNuSspjRp/Do27A=;
 b=IYVxqddi8vfmX/QE4v+tde5humzCJklwvwqZXu9M3qJCiAmHqmMOnzrLlWroQ53WGR
 K6YlA59NgT3y5mQSHrTZ+tUnNn/Wecg7LzyQnZKLTFSyQ1eT8f5jAcwcx8ZiPHpxkI+p
 6TJFsF27a/dp8fmtWnWMiWJrVZnlyg16ZPTsc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SBJxqqJ41Gj2UgLcLdw3cvX6XyzdcNuSspjRp/Do27A=;
 b=KEuBGSxa9QOO3eHcZ6MvbJTTemxyKHm2NS/HYji8+o6rXcjqJynsXLl8l0/msxkXWz
 5ZMoJfM3j/LjOayKoDdy18up4JkP+Meh0qMMqasPt2v9HmcLicfiPwf9rHM86wSiS/FS
 ZdPC3W981Watba8owJmjweOPwD/X3vbIhonaJNxfRISNpQzCvjAwYyRA/8JQ+wXOOJ7J
 yl5+nOhPmm8gZFyAicVSN/GDDmoaDz2DuGFMbvbigWihvcxKJxj/yBhmSfWmvYQj8xUr
 a9Pk5g1kpNv381fh/PpkCoMucxXQQ5CeXM7Jyx9bnB+xd7VtOJ4YBhZUStwXmTzlJ0EU
 yMMQ==
X-Gm-Message-State: APjAAAULWTSPRj2FlpZyexxk1sGscTIHm9IU3Nm5T6R+zTWHzIngRnCp
 rtdPKDZm1fu4TkDmxA22F0YhiG3TQ3s=
X-Google-Smtp-Source: APXvYqzH/QUyTbC8puqQ/sSufXZxebxI6bVwp/ZlB+QZnP8DhOb9GtCZpQXclMNR63Jr17+SmEuWLg==
X-Received: by 2002:ac2:42c8:: with SMTP id n8mr25907442lfl.28.1558032107400; 
 Thu, 16 May 2019 11:41:47 -0700 (PDT)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com.
 [209.85.167.42])
 by smtp.gmail.com with ESMTPSA id q9sm1095859lfn.88.2019.05.16.11.41.46
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 11:41:47 -0700 (PDT)
Received: by mail-lf1-f42.google.com with SMTP id y19so3435882lfy.5
 for <linux-riscv@lists.infradead.org>; Thu, 16 May 2019 11:41:46 -0700 (PDT)
X-Received: by 2002:a19:ca02:: with SMTP id a2mr24597189lfg.88.1558032105763; 
 Thu, 16 May 2019 11:41:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2+RHAReOZdo8nEvqDeC1EPj83L2Ug4JuVRiUh943AuNw@mail.gmail.com>
In-Reply-To: <CAK8P3a2+RHAReOZdo8nEvqDeC1EPj83L2Ug4JuVRiUh943AuNw@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 16 May 2019 11:41:29 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgiv5ftb+dq7N8cN4n2YX3VkyzeQccywn07Xu9xhOLTSw@mail.gmail.com>
Message-ID: <CAHk-=wgiv5ftb+dq7N8cN4n2YX3VkyzeQccywn07Xu9xhOLTSw@mail.gmail.com>
Subject: Re: [GIT PULL] asm-generic: kill <asm/segment.h> and improve nommu
 generic uaccess helpers
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_114150_412335_92942A2F 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch <linux-arch@vger.kernel.org>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 5:09 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/arnd/asm-generic.git
> tags/asm-generic-nommu

Interesting. I haven't seen this error before:

  # gpg: Signature made Tue 23 Apr 2019 12:54:49 PM PDT
  # gpg:                using RSA key 60AB47FFC9095227
  # gpg: bad data signature from key 60AB47FFC9095227: Wrong key usage
(0x00, 0x4)
  # gpg: Can't check signature: Wrong key usage

I think it means that you signed it with a key that was marked for
encryption only or something like that.

But gpg being the wonderful self-explanatory great UX that it is, I
have no effin clue what it really means.

Looking at the git history, it turns out this has happened a before
from you, and in fact goes back to pull requests from 2012.

Either I just didn't notice - which sounds unlikely for something that
has been going on for 7+ years - or the actual check and error is new
to gpg, and I only notice it this merge window because I've upgraded
to F30.

          Linus

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
